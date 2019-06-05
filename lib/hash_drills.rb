def shopping_list
{
    :sweets => ["soda", "candy", "potato chips"],
    :protein => {
        :meat => ["chicken", "fish", "steak"],
        :other => ["eggs", "nuts","beans"]
    },
    :dairy => ["milk", "yogurt", "cheese"],
    :fruits => ["bananas", "oranges", "apples", "grapes"],
    :vegetables => ["cabbage", "broccoli", "tomatoes", "carrots"],
    :grains => ["crackers", "rice", "bread", "pasta", "cereal"]
}
end
#Vegetarian dishes cannot include meat or fish. While
# some vegetarians are okay with eggs, leave them off as well.

def vegetarian_ingredients
    vegetarian_list = shopping_list
    vegetarian_list[:protein].delete(:meat)
    vegetarian_list[:protein][:other].shift
    vegetarian_list
end

def ketogenic_ingredients
  ketogenic_list = shopping_list.select {|key, value| [:vegetables, :protein, :dairy].include? key}
  ketogenic_list[:dairy] = ["cheese"]
  ketogenic_list

end

# Ketogenic dishes have very few carbs and sugars, and
# cannot include grains, fruits, or sweets. Cheese is great for keto, but not
# milk or yogurt. Also, leave out the beans.
#
def mediterranean_ingredients

    mediterranean_list = shopping_list.select {|key, value| [:protein, :dairy, :fruits, :vegetables, :grains].include? key}
    mediterranean_list[:protein][:meat].pop
    mediterranean_list[:protein][:other] = ["nuts"]
    mediterranean_list[:dairy].delete("milk")
    mediterranean_list
end
#
# For mediterranean dishes, we can _only_ include
# chicken, fish, nuts, yogurt, cheese, fruits, vegetables, and grains.

def vegan_ingredients
# let's use the `Hash` returned by `vegetarian_ingredients`, remove all dairy items
# from it, and return this updated `Hash`.
  vegan_list = vegetarian_ingredients
  vegan_list.delete(:dairy)
  vegan_list
end

def remove_allergens(ingredients_list)
ingredients_list[:protein][:other].delete("nuts")
ingredients_list
# # Write a method `remove_allergens` that takes in any **one** of our ingredients
# `Hash`es as an argument, and returns a new `Hash` with nuts removed.

end

  #
  # Write a method `remove_allergens` that takes in any **one** of our ingredients
  # `Hash`es as an argument, and returns a new `Hash` with nuts removed.
#
# use the `Hash` returned by `vegetarian_ingredients`, remove all dairy items
# from it, and return this updated `Hash`.
