# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Write a method separate_comma which takes a positive integer as its input and returns a comma-separated integer as a string.

# 0. Pseudocode

# What is the input?
#-Integer
# What is the output? (i.e. What should the code return?)
#-String
# What are the steps needed to solve the problem?
First I should convert the integer to a string
Then I convert the string into an array of strings
Then I join the array to become one string, with a comma placed every 3rd index 


# 1. Initial Solution
	
def seperate_comma(integer)
  array = Array.new
  
  integer = integer.to_s  
  array = integer.split(//)
  p array
  
  # puts array.values_at(-3)
  
  # p array.join("")
 
 
end



# 2. Refactored Solution




# 3. Reflection