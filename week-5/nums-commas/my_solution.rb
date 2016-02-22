# Numbers to Commas Solo Challenge

# I spent 6 hours on this challenge.

# Write a method separate_comma which takes a positive integer as its input and returns a comma-separated integer as a string. 


# 0. Pseudocode

# What is the input? Integer
# What is the output? String
# What are the steps needed to solve the problem?

# Convert the number into a string
# IF the string.length < 4 RETURN the string

# Set forumla by which to determine how many commas are needed in a number (string.leng) 
# If string.length > 3, insert comma at index[-4]
#

# p 1000000.to_s.length / 3
# p 1000000.to_s.length % 3

# total_commas_needed = 3

# counter = -4
# total_commas_needed.times do
#   puts "hello #{counter}"
#   counter -= 4
# end

#   number.insert(-4, ",")
#   number.insert(-8, ",")
#   number.insert(-12, ",")
#   number.insert(-16, ",") 
    
#     counter = -4
#     total_commas_needed.times do      
#       number.insert(counter, ",")
#       counter -= 4      
#   end



#WORKS FOR 6 NUMBERS!!
  # if number.length > 3 && number.length % 3 == 0  
  #   total_commas_needed = total_commas_needed-1
  #           #100000
  #   counter = -4
  #   total_commas_needed.times do      
  #     number.insert(counter, ",")
  #     counter -= 4     
  #   end
  # end  



def separate_comma(number)
  
  number = number.to_s 
  total_commas_needed = number.length / 3  
   
  if number.length < 4
    return number
  end     
  
  if number.length > 3 && number.length % 3 == 0 
    # 6 digits => 2 commas but need only 1
    
    total_commas_needed = total_commas_needed -1 
    p total_commas_needed
    
    counter = -4
    total_commas_needed.times do          
      number.insert(counter, ",")
      counter = -4
     return number
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

# 


# 2. Refactored Solution




# 3. Reflection
# What was your process for breaking the problem down? What different approaches did you consider?
# 

# Was your pseudocode effective in helping you build a successful initial solution?
# What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
# How did you initially iterate through the data structure?
# Do you feel your refactored solution is more readable than your initial solution? Why?







