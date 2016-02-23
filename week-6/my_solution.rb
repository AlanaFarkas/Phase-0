# Die Class 2: Arbitrary Symbols

# You already completed a basic Die class from Die Class 1. In this challenge you will create a more exciting Die class that takes an array of strings as its input. When Die#roll is called, it randomly returns one of these strings. If Die.new is passed an empty array, it should raise an ArgumentError.


# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# Pseudocode

# Input: Array of strings
# Output: Random index from array of strings
# Steps:

#DEF #initialize method(labels) 
#IF labels.length < 1 RAISE argument error 
#ELSE @labels = labels for the instance variable in this method.

#DEF #sides method 
#when called should RETURN @labels

#DEF #roll method
#When called, should RETURN a random label


# Initial Solution

class Die
  
  def initialize(labels)

    if labels.length < 1
      raise ArgumentError.new("Oops, we need more labels before we can roll the die!")
    else 
      @labels = labels
    end

  end

  def sides
    @labels = labels.length
    return @labels
  end

  def roll
    @rand = @labels.sample
    return @rand
  end
end


# Refactored Solution

class Die
  
  def initialize(labels)
    if labels.length < 1 
    	raise ArgumentError.new()
    else 
      @labels = labels
    end
  end

  def sides
    return @labels.length
  end

  def roll
    return @labels.sample
  end
end



# Reflection

# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
# The steps and implementation were very similar and not much needed changing despite the fact that this challenge had an array of strings as the input instead of the number of sides. For string though, I used #.sample instead of the rand() method because I wasn't dealing with ranges. 

# What does this exercise teach you about making code that is easily changeable or modifiable?
# Since starting DBC, in our readings, and it my googling, I've often come across the idea that a good programmer is a lazy programmer and making easily modifiable code seems like a good idea if you want to 'stay lazy'. Each day my files on GitHub become more useful as I can refer to and reuse previous code with slight tweaks when possible.  

# What new methods did you learn when working on this challenge, if any?
# I used .sample to return a random string from my array. I hadn't used this method before but I love it now!

# What concepts about classes were you able to solidify in this challenge?
# This challenge was a good review for me--as I was wrapping up week 5 I went through Codecademy's courses on Classes which gave me more confidence creating classes.