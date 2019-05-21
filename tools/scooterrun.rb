
require "./app/scootermodels/Scooter.rb"
require "./app/scootermodels/Rider.rb"
require "./app/scootermodels/Trip.rb"

scooter1 = Scooter.new("scooter1")
scooter2 = Scooter.new("scooter2")
scooter3 = Scooter.new("scooter3")
scooter4 = Scooter.new("scooter4")
scooter5 = Scooter.new("scooter5")

rider1 = Rider.new("rider1")
rider2 = Rider.new("rider2")
rider3 = Rider.new("rider3")
rider4 = Rider.new("rider4")
rider5 = Rider.new("rider5")
rider6 = Rider.new("rider6")

trip1 = Trip.new(5, scooter1, rider1)
trip2 = Trip.new(7, scooter2, rider2)
trip3 = Trip.new(3, scooter3, rider4)
trip4 = Trip.new(2, scooter3, rider5)
trip5 = Trip.new(9, scooter5, rider3)
trip6 = Trip.new(2, scooter1, rider6)
# trip7 = Trip.new(92, scooter4, rider1)

# puts rider3.average_trip
# puts rider1.trips
# puts trip1
# puts rider3.scooters
# puts rider3.trips
# puts trip1.distance
# puts Trip.all
# puts scooter2.mileage

#  puts scooter2.all_riders

# p  rider3

# puts rider1.current_balance

puts scooter1.maintenance