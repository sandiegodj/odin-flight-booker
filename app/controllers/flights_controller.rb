class FlightsController < ApplicationController
  
  def index
    @airports = Airport.all.map{|a| [a.airport_code]} 
    @passengers = 4.times.map{|n| [n + 1]}
    @dates = Flight.get_dates
  end

end