class Flight < ActiveRecord::Base
  has_one :to_airport,   :foreign_key => 'id', :class_name => "Airport"
  has_one :from_airport, :foreign_key => 'id', :class_name => "Airport"
 

 def self.get_dates
  pluck(:start).map{ |d| [ d.strftime("%m/%d/%Y"), d.to_date] }.uniq
 end

end
