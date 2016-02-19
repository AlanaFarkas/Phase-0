# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution

# def mode(array)
# mode = Hash.new
#   array.each { |n| 
#     if mode[n].nil?
#       mode[n] = 1
#     else
#       mode[n] += 1
#     end
#     }

#   greatest = nil
#   greatest_values = Array.new
#   mode.each { |k, v| 
#     if greatest == nil || v > greatest
#       greatest = v
      
#     end
#     }
  
#   mode.each { |k, v| 
#     if v == greatest 
#     greatest_values.push k end }
  
#   return greatest_values
# end



# 3. Refactored Solution
def mode(array)  
mode = Hash.new
  
array.each { |n|
  if mode[n].nil? 
    mode[n] = 1 
  else
     mode[n] += 1
  end }
    

  greatest = nil
  greatest_values = Array.new
  
  mode.each { |k, v| greatest = v if greatest == nil || v > greatest }  
  mode.each { |k, v| greatest_values.push k if v == greatest }  
  
  greatest_values
  
end



# 4. Reflection