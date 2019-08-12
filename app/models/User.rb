class User

  @@all = []

  def initialize(name)
    @name=name
    @@all << self
  end

  def self.all
    @@all
  end

  def recipes
    RecipeCard.select{|card| card.user == self}
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(self, recipe, date, rating)
  end

  def declare_allergy(ingr)
    Allergen.new(self,ingr)
  end

  def allergens
    Allergen.all.select{|allergen| allergen.user == self}
  end

  def top_three_recipes
    sorted_recipes = User.recipes.sort_by{|recipe| recipe.rating}
    sorted_recipes.slice(-3,3)
  end

  def most_recent_recipe
    self.recipes.last
  end

end
