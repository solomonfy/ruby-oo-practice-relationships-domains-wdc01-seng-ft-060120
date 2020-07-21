class Bakery

    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def ingredients
        self.desserts.map do |dessert|
            dessert.ingredients[0]
        end
    end

    def desserts  
        Dessert.all.find_all do |dessert|
            dessert.bakery == self
        end       
    end

    def average_calories
        binding.pry
        self.ingredients.map {|ingredient| ingredient.calorie_count}.sum/desserts.count
    end

    def self.all
        @@all 
    end

    def shopping_list
        array_of_ingredients= self.ingredients.map do |ingredient|
            ingredient.name
        end
        "This is the list of ingredients: " + array_of_ingredients.join(", ")
    end

end