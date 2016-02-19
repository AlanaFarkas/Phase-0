# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Write a method separate_comma which takes a positive integer as its input and returns a comma-separated integer as a string.
# Write a method separate_comma which takes a positive integer as its input and returns a comma-separated integer as a string. 

# 0. Pseudocode

<<<<<<< HEAD
# What is the input? Integer
# What is the output? String
# What are the steps needed to solve the problem?
=======
# convert integer to string ==> 1000 becomes "1000"
# reverse! string ==> "1000" becomes "0001"
# if string.length is <= 3 return string ==> "500"





# else if string.length >= 4 && counter = 3, insert ","
# counter = 0 
# counter += 1
#reverse string 
#output string

# while counter = 3 insert comma
# reset counter after each comma insertion?

#   if integer.length >= 4
#  integer.each { |number| p integer[-2] + ","}
# end

>>>>>>> nums-comma-branch

# Create comma-separated method that accepts an array
# Set the array to a string
# Split the array
# If the array.length < 4 return the array as a string

# If integer.length > 3, insert comma[-1] and counter = 0
# For every three indexes, counter therafter, add another comma
#numbers get added to the front of the array
# Reverse is last step?

<<<<<<< HEAD
  
def separate_comma(integer)
  
  integer = integer.to_s
  counter = 0 
  
  if integer.length < 4
    p integer
  end
  
  if integer.length > 3
    integer.reverse
    number_as_string = []
    counter = 1
    
  end
  
#  integer = integer.to_s.reverse
  integer.insert(-3, ",") 
   
#   p integer
    
#   end
  p integer
 
end

separate_comma(100000)
=======
# 1. Initial Solution
  
def seperate_comma(integer)
  integer = integer.to_s.reverse
  if integer.length <= 3
      p integer.reverse
  end
  
  counter = 0 
  # until counter == 3

  
  if integer.length >= 4
    p integer + "," 
    counter =+1   
end
  

  p integer.reverse

end

seperate_comma(4000)
>>>>>>> nums-comma-branch




# 2. Refactored Solution




# 3. Reflection