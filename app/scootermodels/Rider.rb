class Rider

    attr_accessor :allowance 
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @allowance = 100
        @@all << self
    end 

    def self.all
        @@all 
    end 

    def trips
        Trip.all.select {|trip| trip.rider == self}
    end 

    def average_trip
        trip_array = self.trips.map {|trip| trip.distance}
        trip_array.inject {|sum, trip| sum + trip}.to_f / trip_array.size
    end 

    def scooters
        self.trips.map {|trip| trip.scooter}.flatten
    end 

    def mileage
        sum = 0 
        self.trips.each do |trip|
            sum += trip.distance
        end 
        sum
    end 

    def current_balance
        self.allowance = self.allowance - self.mileage 
        if self.allowance <= 0 
            return "You have no more miles. Top up!"
        else 
            return "You have #{self.allowance} miles left in your account."
        end 
    end

    
end 