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

def vegetarian_ingredients
  vegetarian_ingredients = {
    :sweets => ["soda", "candy", "potato chips"],
    :protein => {
    :other => ["nuts","beans"],},
    :dairy => ["milk", "yogurt", "cheese"],
    :fruits => ["bananas", "oranges", "apples", "grapes"],
    :vegetables => ["cabbage", "broccoli", "tomatoes", "carrots"],
    :grains => ["crackers", "rice", "bread", "pasta", "cereal"]
  }
end

def ketogenic_ingredients
  ketogenic_ingredients = {
      :protein => {
          :meat => ["chicken", "fish", "steak"],
          :other => ["eggs", "nuts","beans"]
      },
      :dairy => ["cheese"],
      :vegetables => ["cabbage", "broccoli", "tomatoes", "carrots"],
  }
end

def mediterranean_ingredients
  mediterranean_ingredients =
  {
      :protein => {
          :meat => ["chicken", "fish"],
          :other => ["nuts"]
      },
      :dairy => ["yogurt", "cheese"],
      :fruits => ["bananas", "oranges", "apples", "grapes"],
      :vegetables => ["cabbage", "broccoli", "tomatoes", "carrots"],
      :grains => ["crackers", "rice", "bread", "pasta", "cereal"]
  }

end

def vegan_ingredients

  vegan_ingredients = {
    :sweets => ["soda", "candy", "potato chips"],
    :protein => {
    :other => ["nuts","beans"],},
    :fruits => ["bananas", "oranges", "apples", "grapes"],
    :vegetables => ["cabbage", "broccoli", "tomatoes", "carrots"],
    :grains => ["crackers", "rice", "bread", "pasta", "cereal"]
  }
end

def remove_allergens(ingredients_list)
remove_allergens = {

 :vegetarian_ingredients => {
   :sweets => ["soda", "candy", "potato chips"],
   :protein =>
    {
     :other => ["nuts","beans"],
   },
  :dairy => ["milk", "yogurt", "cheese"],
  :fruits => ["bananas", "oranges", "apples", "grapes"],
  :vegetables => ["cabbage", "broccoli", "tomatoes", "carrots"],
  :grains => ["crackers", "rice", "bread", "pasta", "cereal"]
},

 :ketogenic_ingredients => {
    :protein => {
        :meat => ["chicken", "fish", "steak"],
        :other => ["eggs", "nuts","beans"]
    },
    :dairy => ["cheese"],
    :vegetables => ["cabbage", "broccoli", "tomatoes", "carrots"],
},
:mediterranean_ingredients => {
    :protein => {
        :meat => ["chicken", "fish"],
        :other => ["nuts"]
    },
    :dairy => ["yogurt", "cheese"],
    :fruits => ["bananas", "oranges", "apples", "grapes"],
    :vegetables => ["cabbage", "broccoli", "tomatoes", "carrots"],
    :grains => ["crackers", "rice", "bread", "pasta", "cereal"]
},
:vegan_ingredients => {
  :sweets => ["soda", "candy", "potato chips"],
  :protein => {
  :other => ["nuts","beans"],},
  :fruits => ["bananas", "oranges", "apples", "grapes"],
  :vegetables => ["cabbage", "broccoli", "tomatoes", "carrots"],
  :grains => ["crackers", "rice", "bread", "pasta", "cereal"]
}
# #


}

remove_allergens.delete_if{|key, value| key == [:protein]}

end

  #
  # Write a method `remove_allergens` that takes in any **one** of our ingredients
  # `Hash`es as an argument, and returns a new `Hash` with nuts removed.
#
# use the `Hash` returned by `vegetarian_ingredients`, remove all dairy items
# from it, and return this updated `Hash`.
