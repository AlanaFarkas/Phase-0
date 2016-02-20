
# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? array, min_size, pad_value
# What is the output? array 
# What are the steps needed to solve the problem?

# For destructive
# calculate length of array
# compare length against min_size
# IF min_size <= length RETURN array
# IF length < min_size THEN pad
# Iterate "x" times through loop, each time pushing in the pad_value into the array
# where x is minimum_size - array_length

# For non-destructive, same as above, except create new local variable
# Set it = to array (which is received as arguemt)
# do above operations on local variable, and return it


# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  length = array.length
  
  if min_size <= length
    return array
  
  else 
  count = min_size - length  
    count.times { |n| array << value }     
  end
  return array
end


def pad(array, min_size, value = nil) #non-destructive
  # Your code here
  new_array = []
  array.each {|n| new_array << n}
  length = array.length
  
  if min_size <= length
    return new_array
  
  else 
  count = min_size - length  
    count.times { |n| new_array << value }     
  end
  return new_array
end


# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
  
  if min_size <= array.length
    return array
  
  else 
    (min_size - array.length).times { |n| array << value }     
  end
  return array
end


def pad(array, min_size, value = nil) #non-destructive
  
  new_array = []
  array.each {|n| new_array << n}
  
  if min_size <= array.length
    return new_array
  
  else     
    (min_size - array.length).times { |n| new_array << value }     
  end
  return new_array
end




# 4. Reflection