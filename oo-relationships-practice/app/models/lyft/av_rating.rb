module AverageRating


    def initialize(name)
        @name = name
        self.class.all << self
    end
    
    def average_rating
        all_ratings = self.rides.map {|r| r.rating}
        av_rating = all_ratings.sum.to_f / all_ratings.count
        av_rating.round(2)
    end

    def total_distance
        self.rides.map {|ride| ride.distance}.sum
    end
    
end