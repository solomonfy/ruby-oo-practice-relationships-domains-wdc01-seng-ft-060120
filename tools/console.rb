require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# BAKERY

johns_bakery = Bakery.new("Johns Bakery")
# b_and_b = Bakery.new("B & B Bakery")

sundae = Dessert.new("Sundae", johns_bakery)
cake = Dessert.new("Cake", johns_bakery)
maffin = Dessert.new("Maffin", johns_bakery)
english_cake = Dessert.new("English Cake", johns_bakery)


sugar = Ingredient.new("Sugar!", 100)
flour = Ingredient.new("Flour", 50)
choclate_mousse = Ingredient.new("Choclate Mousse", 60)
choclate_sprinkles = Ingredient.new("Choclate Sprinkles", 80)
choclate= Ingredient.new("Choclate", 70)

sugar_sundae = IngredientDessert.new(sugar, sundae)
flour_sundae = IngredientDessert.new(flour, sundae)
flour_cake = IngredientDessert.new(flour, cake)
sugar_cake = IngredientDessert.new(sugar, cake)
choclate_cake = IngredientDessert.new(choclate, english_cake)
choclate_maffin = IngredientDessert.new(choclate, maffin)
choclate_mousse_maffin = IngredientDessert.new(choclate_mousse, maffin)


# puts johns_bakery.ingredients
# puts johns_bakery.average_calories
# puts johns_bakery.shopping_list
#print sugar.bakery
# print Ingredient.find_all_by_name("Choclate")

#AIRBNB

5.times do
  Guest.new(Faker::Name.name)
end

5.times do
  Listing.new(Faker::Address.city)
end

trip1 = Trip.new(Listing.all[0], Guest.all[0])
trip2 = Trip.new(Listing.all[0], Guest.all[1])
trip8 = Trip.new(Listing.all[0], Guest.all[2])
trip8 = Trip.new(Listing.all[0], Guest.all[3])
trip3 = Trip.new(Listing.all[1], Guest.all[2])
trip4 = Trip.new(Listing.all[1], Guest.all[3])
trip5 = Trip.new(Listing.all[2], Guest.all[2])
trip6 = Trip.new(Listing.all[3], Guest.all[2])
trip7 = Trip.new(Listing.all[3], Guest.all[0])

#LYFT

3.times do
  Passenger.new(Faker::Name.name)
end

3.times do
  Driver.new(Faker::Name.name)
end

ride1 = Ride.new(Passenger.all[0], Driver.all[0], 102, 10)
ride2 = Ride.new(Passenger.all[0], Driver.all[1], 25, 4)
ride3 = Ride.new(Passenger.all[1], Driver.all[1], 45, 9)
ride4 = Ride.new(Passenger.all[2], Driver.all[1], 38, 6)
ride5 = Ride.new(Passenger.all[2], Driver.all[2], 10, 0)
ride6 = Ride.new(Passenger.all[2], Driver.all[0], 56, 10)

# Driver.all.mileage_cap.include?(Driver.all[0])
puts Driver.highest_rated


# GYM

4.times do
  Trainer.new(Faker::Name.name)
end

Client.new(Faker::Name.name, Trainer.all[0])
Client.new(Faker::Name.name, Trainer.all[0])
Client.new(Faker::Name.name, Trainer.all[0])
Client.new(Faker::Name.name, Trainer.all[1])
Client.new(Faker::Name.name, Trainer.all[1])
Client.new(Faker::Name.name, Trainer.all[2])
Client.new(Faker::Name.name, Trainer.all[3])


2.times do
  Location.new(Faker::Address.city)
end

5.times do
  LocationTrainer.new(Location.all.sample, Trainer.all.sample)
end


# puts Location.highest_clients
# puts Location.least_clients
# Trainer.most_clients



binding.pry
