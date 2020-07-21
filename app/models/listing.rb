class Listing

    attr_accessor :listing, :city
    @@all = []

    def initialize(listing, city)
        @listing = listing
        @city = city
        # @all << self
    end
    
    def guests
        match_record = Trip.all.select do |joint_record|
            joint_record.listing == self
        end
        match_record.map do |record|
            record.guest
        end

    def trip #returns an array of all trips at a listing
        Trip.all.listing
    end

    def trip_count  #returns the number of trips that have been taken to that listing
        self.trip.count
    end

    def self.all #returns an array of all listings
        @@all
    end
  
    def find_all_by_city(city) # takes an argument of a city name (as a string) and
                             # returns all the listings for that city
        all_by_city = Listing.all.select do |listed|
            listed.city == city
        end
        all_by_city.collect do |a|
            a.city
        end
        end
    end
    
    def most_popular #finds the listing that has had the most trips
        all_trips = Listing.all.each do |each_trip|
            each_trip.city
        end
        all_trips.max_by {|city| @@all.count(city)}
    end

end
