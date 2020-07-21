class Location
    attr_accessor :city
    @@all = []

    def initialize(city)
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    def trainers
        loc_trainer = LocationTrainer.all.select {|lt| lt.location == self}
        loc_trainer.map {|lt| lt.trainer}
        binding.pry
    end

    # def clients
    #     self.trainers.map {|trainer| trainer.clients}
    # end

    def self.highest_clients
        high_clients = LocationTrainer.all.max_by {|lt| lt.trainer.clients.count}
        # puts "#{high_clients.location.city} is the location with highest number of clients!"
    end
    
    def self.least_clients
        least_clients = LocationTrainer.all.min_by {|lt| lt.trainer.clients.count}
        # puts "#{least_clients.location.city} is the location with least number of clients!"
    end

end