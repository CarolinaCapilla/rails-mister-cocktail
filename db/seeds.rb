# require 'json'
# require 'rest-client'

# url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'

# cocktail_ingredients = JSON.parse(RestClient.get(url))

# 20.times do
#   Ingredient.create()
# end
puts 'Cleaning database...'
Ingredient.destroy_all

puts 'Creating ingredients'
ingredients = [
  Ingredient.create(name: 'Lemon'),
  Ingredient.create(name: 'Lime'),
  Ingredient.create(name: 'Mint leaves'),
  Ingredient.create(name: 'White rum'),
  Ingredient.create(name: 'Gomme'),
  Ingredient.create(name: 'Gin'),
  Ingredient.create(name: 'Campari'),
  Ingredient.create(name: 'Orange juice'),
  Ingredient.create(name: 'Tequila blanco'),
  Ingredient.create(name: 'Orgeat'),
  Ingredient.create(name: 'Triple sec'),
  Ingredient.create(name: 'Rose essence'),
]

ingredients.each do |ingredient|
  puts "created #{ingredient.name}"
end

puts 'Finished'
