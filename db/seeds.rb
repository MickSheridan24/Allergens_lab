# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create(name: "Gordon Ramsay")
user2 = User.create(name: "Billy McCantTouchNuts")

recipe = Recipe.create(name: "Peruvian Chicken", description: "It's divine!", :user_id => user1.id)
recipe2 = Recipe.create(name: "Chocolate Something, Wow!", description: "You can tell where my head is at right now", :user_id => user1.id)

chicken = Ingredient.create(name: "chicken")
chocolate = Ingredient.create(name: "chocolate")
salt = Ingredient.create(name: "salt")
milk = Ingredient.create(name: "milk ")
egg = Ingredient.create(name: "egg")
peanut = Ingredient.create(name: "peanut")

recipe.ingredients << chicken
recipe.ingredients << salt
recipe2.ingredients << chocolate
recipe2.ingredients << milk
recipe2.ingredients << egg
recipe2.ingredients << peanut

Allergen.create(deadliness: 10000, :user_id => user2.id, :ingredient_id => peanut.id)
