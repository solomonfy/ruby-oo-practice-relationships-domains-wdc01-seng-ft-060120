class Guest
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def trips
        Trip.all.find_all {|trip| trip.guest == self}
    end

    def listings
        self.trips.map {|trip| trip.listing}
    end

    def trip_count
        self.trips.count
    end

    def self.pro_traveller
        self.all.find_all {|guest| guest.trip_count > 1}
    end

    def self.find_all_by_name(name)
        binding.pry
        self.all.find_all {|guest| guest.name.downcase.gsub(" ","") == name.downcase.gsub(" ","")}
    end


end