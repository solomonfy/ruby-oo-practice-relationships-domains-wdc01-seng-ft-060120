class LocationTrainer
    attr_accessor :location, :trainer
    @@all = []

    def initialize(location, trainer)
        @location, @trainer = location, trainer
        @@all << self
    end

    def self.all
        @@all
    end
end