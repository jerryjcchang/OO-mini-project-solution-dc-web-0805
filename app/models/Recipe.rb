class Recipe

  @@all = []

  def initialize(name)
    @name=name
    @@all << self
  end

  def self.all
    @@all
  end

  def cards
    RecipeCard.all.select{|card| card.recipe == self}
  end

  def users
    self.cards.map{|card| card.user}
  end

  def recipe_ingredients
    RecipeIngredient.all.select{|join| join.recipe == self}
  end

  def ingredients
    self.recipe_ingredients.map{|join| join.ingredients}
  end

  def allergens
    self.ingredients.select{|ingr| Allergen.ingredients.include?(ingr)}
  end

  def add_ingredients(ingredient)
    RecipeIngredient.new(self, ingredient)
  end

  def self.most_popular
    self.all.sort{|recipe| recipe.users.length}[-1]
  end

end
