# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Write a method separate_comma which takes a positive integer as its input and returns a comma-separated integer as a string. 

# 0. Pseudocode

# What is the input? Integer
# What is the output? String
# What are the steps needed to solve the problem?

# Create comma-separated method that accepts an array
# Set the array to a string
# Split the array
# If the array.length < 4 return the array as a string

# If integer.length > 3, insert comma[-1] and counter = 0
# For every three indexes, counter therafter, add another comma
#numbers get added to the front of the array
# Reverse is last step?

# def separate_comma(number)
  
#   number = number.to_s  
   
#   if number.length < 4
#     return number
#   end
    
#   if number.length > 3
    
#     total_commas_needed = number.to_s.length / 3 

#     counter = -4
#     total_commas_needed.times do
      
#       number.insert(counter, ",")
#       counter -= 4
      
#     end
    
   
#     return number    
    
 
# end
# end
def separate_comma(number)
  
  number = number.to_s 
  total_commas_needed = number.length / 3  
   
  if number.length < 4
    return number
  end 

    
  
  if number.length > 3 && number.length % 3 == 0  
    total_commas_needed = total_commas_needed-1
            
    counter = -4
    total_commas_needed.times do      
      number.insert(counter, ",")
      counter -= 4     
    end
  end 
   
if number.length > 3        
    counter = -4
    total_commas_needed.times do      
      number.insert(counter, ",")
      counter -= 4 
    end
  end


    return number
end




# 2. Refactored Solution




# 3. Reflection