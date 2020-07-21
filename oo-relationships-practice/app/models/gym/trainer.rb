class Trainer
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def clients
        Client.all.select {|c| c.trainer == self}
    end

    def self.most_clients
        trainer = Trainer.all.max_by {|t| t.clients.count}
        puts "Trainer #{trainer.name} has the most clients of #{trainer.clients.count}!"
    end
end