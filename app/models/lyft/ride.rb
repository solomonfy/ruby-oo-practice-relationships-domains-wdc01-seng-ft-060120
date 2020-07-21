class Ride
    attr_accessor :distance, :passenger, :driver, :rating
    @@all = []

    def initialize(passenger, driver, distance, rating)
        @passenger = passenger
        @driver = driver
        @distance = distance.to_f
        @rating = rating
        @@all << self
    end

    def self.all
        @@all
    end

    def rating
        @rating.clamp(0, 10)
    end

    def self.average_distance
        all_rides_distances = Ride.all.map {|ride| ride.distance}
        all_rides_distances.sum / all_rides_distances.size
    end
end