class Trip

    attr_reader :scooter, :rider, :distance, :cost
    @@all = []

    def initialize(distance, scooter, rider)
        @distance = distance 
        @scooter = scooter
        @rider = rider 
        @@all << self

    end

    def cost
        distance * 5.5
    end 

    def trip_cost
       self.cost 
    end

    def self.all
        @@all
    end 
end 

