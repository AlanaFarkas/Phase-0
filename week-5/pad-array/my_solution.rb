
# Pad an Array

# I worked on this challenge Afaan Naqvi

# I spent 1 hour on this challenge.


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
# Were you successful in breaking the problem down into small steps?
# Yes, my partner and I pseudcoded well, teasing out the important concepts and were able to build our methods step-by-step based on our pseudocode.

# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
# We spent more time writing out our pseudocode than we did our initial solution because we really wanted to go slowly, and step-by-step. We chose obvious variable names like "new_array" for our new array which always makes reading code easier for me. 

# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
# We passed most of the test quickly but our rspec failure indicated that we had a problem with our object_id not being unique in our pad! method and so we looked it up in the Well Grounded Rubyist and went back to the code to refactor our initial solution. 

# When you refactored, did you find any existing methods in Ruby to clean up your code?
# We did not find new methods to refactor our code, but we discussed whether or not fewer lines of code was 'better' even if at first glance the code wasn't as easy to read. For example, in our initial solution we declared count = array.length and used count in our iteration code. In our refactored solution, we did not declare a variable called count but instead just used array.length.

# How readable is your solution? Did you and your pair choose descriptive variable names?
# As discussed above, we did declare variables in our initial solution that we did not end up declaring in our refactored solution. We weren't sure which was 'better' but predicted that code will become easier for us read at first glance as we become more and more familiar with syntax. 

# What is the difference between destructive and non-destructive methods in your own words?
# Destructive methods will change an object and will be saved as the changed object when the method is called with a bang (!). For example number = [1, 2, 3] and number.reverse! = [3, 2, 1]. Now when number is called, the output will forever be [3, 2, 1]. The array has changed but the oject_id has not. Using the same example for non-destructive methods, number = [1, 2, 3] and number.reverse = [3, 2, 1] but calling number again will return the original array, number = [1, 2, 3].
