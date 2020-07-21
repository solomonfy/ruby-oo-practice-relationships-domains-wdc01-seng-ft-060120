class Passenger
    include AverageRating
    attr_accessor :name
    @@all = []

    def self.all
        @@all
    end

    def rides
        Ride.all.select {|ride| ride.passenger == self}.map {|ride| ride}
    end

    def drivers
        self.rides.map {|ride| ride.driver.name}
    end

    def self.premium_members
        premium_member = Passenger.all.select {|p| p.total_distance > 100.0}
        premium_member.map {|p| p.name}
    end

end