class Trip

    attr_reader :listing, :guest
    @@all = []

    def initialize(listing, guest)
        @listing = listing
        @guest = guest
        @@all << self
    end

end
