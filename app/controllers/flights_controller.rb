class FlightsController < ApplicationController
  
  def index
    @airports = Airport.all.map{|a| [a.airport_code, a.id]} 
    @passengers = 4.times.map{|n| [n + 1]}
    @dates = Flight.get_dates
    @flights = Flight.get_flights(flight_params)
  end

  private

    def flight_params
      params.permit(:to_airport,:from_airport,:date, :passengers)
    end
end