class IngredientDessert

    attr_reader :dessert, :ingredient
    @@all = []
    
    def initialize(ingredient, dessert)
        @dessert = dessert
        @ingredient = ingredient
        @@all << self
    end

    def self.all
        @@all 
    end
end
