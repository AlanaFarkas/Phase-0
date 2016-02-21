# In this challenge you'll want to implement a basic Die class which can be initialized with some number of sides. You can then roll the die, which will return a random number. It should work like this:


# Die Class 1: Numeric

# I worked on this challenge by myself.

# I spent 1 hours on this challenge.

# 0. Pseudocode

# Input: Number of sides
# Output: Number rolled, or raise argument error if die has less than 1 side

# Steps for def initialize:
# UNLESS side is less than 1, decalre instance variable @side = side, ELSE raise argument error

# Steps for def sides:
# RETURN @sides 

# Steps for def roll:
# RETURN random number between @sides number and 1

# 1. Initial Solution

class Die
  
  def initialize(sides)
    unless sides < 1
     @sides = sides
     return @sides
      else
     raise ArgumentError.new("Sorry, your die doesn't have enough sides to play!")   
    end
  end

  def sides
   return @sides
  end

  def roll
    return rand(@sides) + 1
  end

end


# 3. Refactored Solution

class Die
  
  def initialize(sides)
    unless sides < 1
     @sides = sides
     else
     raise ArgumentError.new("Sorry, your die doesn't have enough sides to play!")   
    end
  end

  def sides
   return @sides
  end

  def roll
    return rand(@sides) + 1
  end

end



# 4. Reflection

# What is an ArgumentError and why would you use one?
# An argument error is used to notify a user about an input error. For example, if we had a method #name that accepted one parameter of a name to output something like "Hello #{name}!" but no name was given, the program should raise an argument error to alert the user that the program cannot continue to run unless inputs a name, or inputs the correct amount of arguments.

# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
# The only new method I used was rand and I had a helluva difficult time with it! The documentation link that was provided for us in the challenge made absolutely zero sense to me so I kept googling around until I found a pretty simple looking formula #rand(max - min) + min so I used that and it seemed to work. I'm still not really understanding why I'm adding the min number at the end though?

# What is a Ruby class?
# A ruby class is used as a way to imbue objects created by the class with certain variables or methods. I read somewhere (possibly in Well Grounded Rubyist but I can't recall) that a class is sort of a like an object factory that creates objects with specific variables and behaviors already baked in to the new object. 

# Why would you use a Ruby class?
# Creating a class would be a good idea if you know that you'll need to create several different objects by collecting the same information for each object. The specific information will vary, but the class will know to collect the same pieces of information for each new object created. The example we've been shown a few times is if you are creating a customer database of some sort and each customer should have the same information recorded on their record, such as their name, age, and profession. The class would know to collect the names, ages, and professions for each new customer created, with each customer having different names, ages, and professions stored.

# What is the difference between a local variable and an instance variable?
# A local variable is a variable recognized only within a method and is written as such: name = "Alana". An instance variable is declared within a class and will be recognized wherever it appears inside the class. An instance variable is preceded by the @ symbol (@name = name).

# Where can an instance variable be used?
# An instance variable will be recognized wherever it appears inside a class regardless of where it is defined as long as it's defined somewhere inside a method inside a class.









