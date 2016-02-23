# Your Names
# 1)
# 2)

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.


def serving_size_calc(item_to_make, num_of_ingredients)
   
  bakery = {"cookie" => 1, "cake" =>  5, "pie" => 7} #rename bakery

  if bakery.has_key?(item_to_make) == false #if they don't have the item, raises error message
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end
  
  ingredients_needed = bakery[item_to_make] #accessing hash's values by key
  remaining_ingredients = num_of_ingredients % ingredients_needed
  string = "Calculations complete: Make #{num_of_ingredients / ingredients_needed} of #{item_to_make}"

  if remaining_ingredients == 0# change to if/else statement
    #when number of ingredients can be divided evenly by the serving size
    # output = "You can't make anything else"
    return string
  else
    if remaining_ingredients >= 5
      output = "You can bake a cake"
    else 
      output = "You can make some cookies"
    end
    return string + ", you have #{remaining_ingredients} leftover ingredients. #{output}" 
    #Suggested baking items: TODO: MAKE THIS FEATURE" 
    #IF remaining_ingredients >= 5 "you can make a cake" ELSE "can make at least one cookie"

  end
end


p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection