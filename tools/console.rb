require_relative '../config/environment.rb'

jc = User.new("JC")
shannon = User.new("Shannon")
ann = User.new("Ann")

pbj = Recipe.new("PBJ")
ham_cheese = Recipe.new("Ham and Cheese Sandwich")
tuna = Recipe.new("Tuna Sandwich")
grilled_cheese = Recipe.new("Grilled Cheese")

bread = Ingredient.new("bread")
ham = Ingredient.new("ham")
cheese = Ingredient.new("cheese")
tuna_salad = Ingredient.new("tuna salad")
pb = Ingredient.new("peanut butter")
jelly = Ingredient.new("jelly")

pbj_ingr = [bread,pb,jelly]
pbj_ingr.each{|ingr| RecipeIngredient.new(pbj, ingr)}

ham_cheese_ingr = [bread, ham, cheese]
ham_cheese_ingr.each{|ingr| RecipeIngredient.new(ham_cheese, ingr)}

grilled_cheese_ingr = [bread, cheese]
grilled_cheese_ingr.each{|ingr| RecipeIngredient.new(grilled_cheese, ingr)}

tuna_ingr = [bread,tuna_salad]
tuna_ingr.each{|ingr| RecipeIngredient.new(tuna, ingr)}

Allergen.new(jc, pb)
Allergen.new(ann, pb)
Allergen.new(shannon, tuna_salad)

jc.add_recipe_card(grilled_cheese, Time.now, )

binding.pry
