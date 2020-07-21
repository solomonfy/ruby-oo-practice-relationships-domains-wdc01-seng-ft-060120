class Guest

    attr_accessor :name

    def intialize(name)
        @name = name
    end

    def listings
        Trip.all.listing
    end

    
end

