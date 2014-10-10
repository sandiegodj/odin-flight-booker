class Flight < ActiveRecord::Base
  belongs_to :to_airport,   :foreign_key => 'arrival_id', :class_name => "Airport"
  belongs_to :from_airport, :foreign_key => 'departure_id',:class_name => "Airport"
  has_many :bookings
  has_many :passengers, through: :bookings
 

  def self.get_dates
    pluck(:date).map{ |d| [ d.strftime("%m/%d/%Y")] }.uniq
  end
  # need a better check here.
  def self.get_flights(params)
    if !params[:date].nil?
      date = params[:date].to_date
      Flight.where(departure_id: params[:from_airport], arrival_id: params[:to_airport],
                  date: date.beginning_of_day..date.end_of_day)
                #this includes is for n + 1 queries
    end
 end

end
