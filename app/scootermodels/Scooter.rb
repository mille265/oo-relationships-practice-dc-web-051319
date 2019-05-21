require "pry"

class Scooter

    attr_reader :handle, :trips, :rider
    @@all = []

    def initialize(handle)
        @handle = handle
        @@all << self
    end 

    def self.all
        @@all
    end 

    def trips
        Trip.all.select {|trip| trip.scooter == self}
    end 

    def mileage
        sum = 0 
        self.trips.each do |trip|
            sum += trip.distance
        end 
        sum
    end 

    def maintenance 
        if self.mileage >= 100 || self.all_riders.count >= 5
            return "Time to come to the shop for a tune-up!"
        else
            return "You are good to go!"
        end  
    end

    def all_riders
        self.trips.collect do |trip|
             trip.rider 
        end 
    end

end 