class Listing
    attr_accessor :property, :city
    @@all = []

    def initialize(property, city)
        @property = property
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    def trips
        Trip.all.select {|trip| trip.listing == self}
    end
    
    def guests
        self.trips.map {|trip| trip.guest}
    end

    def trip_count
        binding.pry
        self.trips.count
    end

    def self.find_all_by_city(city)
        Listing.all.select {|list| list.city.downcase.gsub(" ","") == city.downcase.gsub(" ","")}
    end

    
    def self.most_popular #finds the listing that has had the most trips
        self.all.max_by {|listing| listing.trip_count}
    end

end