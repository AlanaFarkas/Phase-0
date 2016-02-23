# Your Names
# 1) Alana Farkas
# 2) Kevin Niu

# We spent 1 hours on this challenge.
# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)
   
  bakery = {"cookie" => 1, "cake" =>  5, "pie" => 7} 

  if bakery.has_key?(item_to_make) == false 
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end
  
  ingredients_needed = bakery[item_to_make] 
  remaining_ingredients = num_of_ingredients % ingredients_needed
  string = "Calculations complete: Make #{num_of_ingredients / ingredients_needed} of #{item_to_make}"

  if remaining_ingredients == 0
    return string
  else
    if remaining_ingredients >= 5
      output = "You can bake a cake"
    else 
      output = "You can make some cookies"
    end
    return string + ", you have #{remaining_ingredients} leftover ingredients. #{output}" 
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

# What did you learn about making code readable by working on this challenge?
# Starting this challenge with such an ugly program made me want to change most of the variable names immediately and remove any superfluous code. Why would anyone name their hash containing items in a bakery a "library"? So in addition to writing more efficient code, I learned it's really important to assign obvious and clear variable names wherever possible. We also spent a few mintutes at the end of the session disussing the subjectivity of refactoring -- some people prefer shorter code always, where I said I might prefer longer code if it meant it was more readable. We decided that it often depends on who will be using the code with you/after you.

# Did you learn any new methods? What did you learn about them?
# I learned .has_key? method that helped us elimate the loop the original code had. This method was a great way to return a boolean about whether or not a hash has a certain key. 

# What did you learn about accessing data in hashes? 
# I will be using #.has_key? and #.has_value? often! Glad to have learned these methods so I can reuse them. 

# What concepts were solidified when working through this challenge?
# Dividing variables by other variables to get a number sometimes still throws me for a loop, like above when we divide num_of_ingredients / ingredients_needed. 