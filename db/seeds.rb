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
  Ingredient.create(name: 'lemon'),
  Ingredient.create(name: 'lime'),
  Ingredient.create(name: 'mint leaves'),
  Ingredient.create(name: 'white rum'),
  Ingredient.create(name: 'gomme'),
  Ingredient.create(name: 'gin'),
  Ingredient.create(name: 'campari'),
  Ingredient.create(name: 'orange juice'),
  Ingredient.create(name: 'tequila blanco'),
  Ingredient.create(name: 'orgeat'),
  Ingredient.create(name: 'triple sec'),
  Ingredient.create(name: 'rose essence'),
  Ingredient.create(name: 'campari'),
  Ingredient.create(name: 'orange juice')
]

ingredients.each do |ingredient|
  puts "created #{ingredient.name}"
end

puts 'Finished'
