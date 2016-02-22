# Numbers to Commas Solo Challenge

# I spent 6 hours on this challenge.

# 0. Pseudocode

# What is the input? Integer
# What is the output? String
# What are the steps needed to solve the problem?

# Convert the number into a string
# IF the string.length < 4 RETURN the string

# If string.length > 3, insert comma at -4th index (counter?)
# Set forumla by which to determine how many commas are needed in a number
# total_commas_needed = string.length / 3
# IF string.length % 3 == 0, subtract 1 from total_commas_needed
# total_commas_needed is equal to number of loops per number

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
def separate_comma(number)
  
  number = number.to_s 
  total_commas_needed = number.length / 3  
   
  if number.length < 4
    return number  
  elsif number.length > 3 && number.length % 3 == 0     
    total_commas_needed = total_commas_needed -1         
    counter = -4
    total_commas_needed.times { number.insert(counter, ",")      
      counter = -4
    }  
     return number
  elsif number.length > 3 
    counter = -4
    total_commas_needed.times { number.insert(counter, ",")      
      counter -= 4
    }
  end
    return number
end






# 3. Reflection
# What was your process for breaking the problem down? What different approaches did you consider?
# My process was confused at the beginning. My first approach was to reverse the string and count indices but going to office hours helped to simplify my process a bit so that instead of reverseing the string, I use negative index numbers to count right to left. I was having a hard time visualizing a large number, as a string, in reverse, while breaking down each step so using negative index numbers definitely gave me a big push toward figuring out the rest. 

# Was your pseudocode effective in helping you build a successful initial solution?
# My pseudocode was helpful in thinking about how to solve the problem but I struggled a bit to come up with the methods to make my pseudocode practical. Why it took me so long to figure out .include and .times I do not know but this problem was challenging for me so maybe I should have taken more time away from it more often to 'reset' my brain a bit.

# What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
# Indeed! I was able to implement the .include method more easily because it's a bit more straightforward in its documentation but it took me longer to realize I could set the .times number using a formula instead of an integer. For this solution I iterated using a variable that pointed to a number which was sort of a suprise to me. I'm glad I have that new information, I'm sure I'll need it a lot more going forward.

# How did you initially iterate through the data structure?
# I used the .times and .insert to dictate how many times to iterate over the string and .insert to manipulate the string. I used a counter starting at -4 and subtracted 4 with each iteration.

# Do you feel your refactored solution is more readable than your initial solution? Why?
# I think my refactored code is a bit more readable in that I prefer the structure of #variable.#method { |i| block } instead of the longer form #variable.#method do |i| block end structure. In addition, in my initial solution I used if/end statements and not if/elsif/elsif end statements. Keeping every statement very seperate helps me keep on top of flow better when making initial solutions.







