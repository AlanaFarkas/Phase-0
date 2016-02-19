# Calculate the mode Pairing Challenge

# I worked on this challenge with Kevin Perkins.

# I spent 1.5 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.


# 0. Pseudocode

# What is the input? - Array
# What is the output? (i.e. What should the code return?) - Array
# What are the steps needed to solve the problem? 


#create method mode to take in an array
#create new hash 
#iterate through each element in the array. Each element is a key. Each value is the frequency of the key in the given array.
#iterate through the hash values and return the greatest value
#create an empty array
#push the hash keys that have the greatest value


# 1. Initial Solution

def mode(array)
mode = Hash.new
  array.each { |n| 
    if mode[n].nil?
      mode[n] = 1
    else
      mode[n] += 1
    end
    }

  greatest = nil
  greatest_values = Array.new
  mode.each { |k, v| 
    if greatest == nil || v > greatest
      greatest = v
      
    end
    }
  
  mode.each { |k, v| 
    if v == greatest 
    greatest_values.push k end }
  
  return greatest_values
end

# 3. Refactored Solution
def mode(array)  
mode = Hash.new
 
array.each { |n|
 if mode[n].nil? 
   mode[n] = 1 
 else
    mode[n] += 1
 end }

 greatest = Array.new
 mode.each { |k, v| greatest.push(k) if v == mode.values.max }

 return greatest 
end



# 4. Reflection

# Which data structure did you and your pair decide to implement and why?
# We breifly thought of using only arrays but realized we'd need to use key-value pairs. We decided to use a hash based on the idea that we'd have to assign a frequency value to each key. 

# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 
# Yes, how did you know!? Pseudocoding has always been important to me in theory, but for some reason I never seemed to complete each step in pseudocode before starting to write actual code. For this challenge my pair and I discussed how we each had this problem, and wanted to work to correct it during this challenge and we agree that it was very helpful in the end.

# What issues/successes did you run into when translating your pseudocode to code?
# Not during the coding but we discussed how it's sometimes very difficult to put the methods you're imagining into sentences or even words. We started our pseudocode elegantly, with complex sentences and clauses even, but quickly realized we were wasting too much time. We switched to short, blunt sentences for each step and we were able to write blocks of codes following the pseudocode steps as guides and we are happy with the result.

# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
#For our initial solution we used #each to iterate over our hash and we had many lines of code. In our refactored solution, we found the #max method and used that instead of iterating over the hash again. 
















