require_relative 'ingredient'

class Container
  attr_reader :weight, :maximum_holding_weight, :ingredients, :how_many_ingredients, :which_ingredient
  attr_accessor :ingredients
  def initialize(weight, maximum_holding_weight)
    @weight = weight
    @maximum_holding_weight = maximum_holding_weight
    @ingredients = []
  end

  def fill_with_ingredient(ingredient)
    Ingredient.new(ingredient, weight)
    contents_weight = 0
    while contents_weight < @maximum_holding_weight
      @ingredients << ingredient
      contents_weight += ingredient.weight
    end
    @weight += (@ingredients.length * ingredient.weight).to_i
  end

  def which_ingredient
    @ingredients[0].name
  end

  def how_many_ingredients
    @ingredients.length
  end

  def remove_one_ingredient
    @ingredients.pop
  end

  def empty
    @ingredients = []
  end

end


#     if @weight == 10 && name == "cheesy_poof"
#       @@cheesy_poof_container = self.class.new(10, 20)
#       @cheesy_poof = Ingredient.new("Cheesy Poof", 0.0005)
#       while @weight < @maximum_holding_weight
#         @ingredients << name
#         @weight += 0.0005
#       end
#
#       @which_ingredient = "Cheesy Poof"
#     else @weight == 90
#       @@brussels_sprout_container = self.class.new(90, 140)
#       @brussels_sprout = Ingredient.new("Brussels Sprouts", 0.02)
#       while @weight < @maximum_holding_weight
#         @ingredients << name
#         @weight += 0.02
#       end
#       @which_ingredient = "Brussels Sprouts"
#     end
#   end
#
#   def how_many_ingredients
#     @ingredients.length
#   end
#
#   def remove_one_ingredient
#   end
#
#   def empty
#     @ingredients = []
#
#   end
#end
#
