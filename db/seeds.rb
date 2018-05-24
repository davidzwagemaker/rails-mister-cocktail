# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p "Adding Ingredients"
Ingredient.create(name: "whiskey")
Ingredient.create(name: "fresh lemon juice")
Ingredient.create(name: "syrup")
Ingredient.create(name: "crushed ice")

p "Adding Cocktails"
Cocktail.create(name: "Whiskey Sour")

p "Adding Doses"
Dose.create(description: "2 doses", ingredient: Ingredient.find(1), cocktail: Cocktail.find(1))
Dose.create(description: "1 doses", ingredient: Ingredient.find(2), cocktail: Cocktail.find(1))
Dose.create(description: "1 doses", ingredient: Ingredient.find(3), cocktail: Cocktail.find(1))
Dose.create(description: "Add to flavor", ingredient: Ingredient.find(4), cocktail: Cocktail.find(1))

