# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:

#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Airport.create(airport_code: "SFO")
Airport.create(airport_code: "NYC")
Airport.create(airport_code: "SAN")

Flight.create(departure_id: 1, arrival_id: 2, start: "2014-10-10 12:00:00", duration: "about 6 hours")
Flight.create(departure_id: 2, arrival_id: 1, start: "2014-10-10 07:30:00", duration: "about 6 hours")
Flight.create(departure_id: 1, arrival_id: 3, start: "2014-10-10 13:00:00", duration: "about 2 hours")
Flight.create(departure_id: 3, arrival_id: 1, start: "2014-10-10 06:00:00", duration: "about 2 hours")
Flight.create(departure_id: 3, arrival_id: 2, start: "2014-10-10 14:00:00", duration: "about 6 hours")
Flight.create(departure_id: 2, arrival_id: 3, start: "2014-10-10 05:00:00", duration: "about 6 hours")
