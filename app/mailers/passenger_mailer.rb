class PassengerMailer < ActionMailer::Base
  default from: "support@odinflightbooker"

  def welcome_email(passenger)
    @passenger = passenger
    @booking = @passenger.booking
    @flight = @booking.flight

    email_with_name = "#{@passenger.name} <#{@passenger.email}>"

    mail(to: email_with_name, subject: 'Booking Confirmation')
  end
end
