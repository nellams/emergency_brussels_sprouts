class Ingredient
  attr_reader :name, :weight
  def initialize(name, weight)
    @name = name
    @weight = weight
  end

  def self.create_from_grams(name, weight)
    weight_kg = weight / 1000
    Ingredient.new(name, weight_kg)
  end
end

# Brussels Sprout weighs 20 grams.
# Cheesy Poof weighs 0.5 grams.
