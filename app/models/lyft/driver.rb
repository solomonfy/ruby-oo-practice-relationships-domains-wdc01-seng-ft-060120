class Driver
    include AverageRating
    attr_accessor :name
    @@all = []

    def self.all
        @@all
    end

    def rides
        Ride.all.select {|ride| ride.driver == self}.map {|ride| ride}
    end
    
    def passengers
        self.rides.map {|ride| ride.passenger.name}
    end

    def self.highest_rated
        highest_rate = 0
        all_ratings = Driver.all.map {|driver| driver.average_rating}
        highest_rate = all_ratings.max
        best_driver = Driver.all.find {|d| d.average_rating == highest_rate}
        # binding.pry
        return " *** #{best_driver.name} has the highest rating of #{best_driver.average_rating}! ***"
    end

    def self.mileage_cap(distance)
        driver = Driver.all.select {|driver| driver.distance_drove > distance}
        driver.map {|d| d.name}
    end

end