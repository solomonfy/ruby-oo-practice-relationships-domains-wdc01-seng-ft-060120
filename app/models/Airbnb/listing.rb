class Listing
    attr_accessor :city
    @@all = []

    def initialize(city)
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    def listing_guests_trips
        Trip.all.select {|trip| trip.listing == self}
    end

    def guests
        self.listing_guests_trips.map {|l| l.guest.name}
    end
    
    def trips
        self.listing_guests_trips.map {|l| l}
    end

    def trip_count
        self.trips.count
    end

    def self.find_all_by_city(city)
        Listing.all.select {|list| list.city.downcase == city.downcase}
    end
end