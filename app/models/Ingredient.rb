class Ingredient

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name=name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_common_allergen
    hash = {}
    Allergen.ingredients.each do |ingr|
      if !hash[ingr.name]
        hash[ingr.name] = 1
      else
        hash[ingr.name] += 1
      end
    end
    binding.pry
    hash.sort_by{|k,v| v}.last[0]
  end

end
