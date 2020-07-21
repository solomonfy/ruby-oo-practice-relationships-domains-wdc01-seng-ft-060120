class Ingredient

    attr_reader :name, :calorie_count
    @@all = []
    
    def initialize(name, calorie_count)
        @name = name
        @calorie_count = calorie_count
        @@all << self
    end
    
    def desserts
        #IngredientDessert.all.map do |id|
        #   if id.ingredient == self
        #       id.dessert
        #   end
        IngredientDessert.all.find_all do |id|
            id.ingredient == self
        end.map do |id|
            id.dessert
        end
    end

    def bakery
        self.desserts.map {|dessert| dessert.bakery}.uniq
    end
    
    def self.all
        @@all
    end

    def self.find_all_by_name(string)
        self.all.find_all do |ingredient|
            ingredient.name.downcase.include?(string.downcase)
        end
    end



end
