class BookingsController < ApplicationController

  def new
    @flight = Flight.find(params[:flight])
    @booking = Booking.new
    params[:passengers].to_i.times{@booking.passengers.build}
  end

  def create
    @booking = Booking.new(booking_params)

    if @booking.save
      @booking.passengers.each do |p|
        PassengerMailer.welcome_email(p).deliver
      end
      flash[:success] = "Booking Complete!"
      redirect_to @booking
    else
      render 'new'
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id,
                                    passengers_attributes: [:name, :email] )
  end

end
