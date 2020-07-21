class Dessert

    attr_reader :name, :bakery
    @@all = []


    def initialize(name, bakery)
        @name = name
        @bakery = bakery
        @@all << self
    end


    def ingredients
        IngredientDessert.all.find_all do |ing_des|
            ing_des.dessert == self 
        end.map do |ingredient_dessert|
            ingredient_dessert.ingredient
        end
    end

    def calories
       self.ingredients.map do |ingredient|
        ingredient.calorie_count
       end
    end

    def self.all
        @@all
    end

end