# Build a simple guessing game
# Your GuessingGame class should be initialized with an integer called answer.

# Define an instance method GuessingGame#guess which takes an integer called guess as its input. guess should return the symbol :high if the guess is larger than the answer, :correct if the guess is equal to the answer, and :low if theguess is lower than the answer.

# Define an instance method GuessingGame#solved? which returns true if the most recent guess was correct and false otherwise.


# I worked on this challenge by myself.
# I spent 30 minutes on this challenge.

# Pseudocode

# Input: integer
# Output: symbol/boolean value
# Steps:
#DEF #initialize assigns @answer instance variable
#DEF #guess assigns @guess instance variable. IF @guess is greater than @answer, RETURN :high. ELSIF @guess == @answer RETURN :correct. ELSIF @guess < @answer, RETURN :low.
#DEF #solved?

# Initial Solution

class GuessingGame
  
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
  	@guess = guess

  	if @guess > @answer
  		return "high".to_sym
  	elsif @guess == @answer
  		return "correct".to_sym
  	elsif @guess < @answer
  		return "low".to_sym  		
  	end
  end

  def solved?
  	if @guess == @answer
  		return true
  	elsif @guess != @answer
  		return false 
  	end  			
  end

end

# Refactored Solution

class GuessingGame
  
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
  	@guess = guess
  	if @guess > @answer
  		:high
  	elsif @guess == @answer
  		:correct
  	elsif @guess < @answer
  		:low  		
  	end
  end

  def solved?
  	if @guess == @answer
  		true
  	else
  		false 
  	end  			
  end

end



# Reflection

# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
# It's helpful for me to think of a class as being like a factory that can create products or objects using the same parts and methods for each of its products, even if the finished products are not identical to each other. Using the example of a car factory as a class, each instance of a car being produced will be given wheels, a steering wheel, mirrors, seats, etc. and the factory will use the same methods to add these parts to each car, but what size the wheels are, how many seats the car has and where the mirrors are placed may differ with each car produced. 

# When should you use instance variables? What do they do for you?
# Instance variables should be declared inside methods inside a class so that the instance variable is declared once, but can be used by any method within that class. For example up above, I declare the instance variable @answer inside my #initialize method and I am able to use that instance variable inside other methods in my class like my #guess method and my #solved? method. 

# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
# Flow control is the idea that your code is interpreted from top to bottom and behaves a certain way when a condition is met. For example up above, if a guess is a higher number than the answer, my code will immediately return :high and it will not then continue to check the guess to see if it is equal to the answer, or less than the answer. I didn't have trouble with my flow for this particular challenge because it isn't a very complex structure, but I have in the past. With each method I write it refine my flow control skills!  

# Why do you think this code requires you to return symbols? What are the benefits of using symbols?
# I think we were asked to use symbols for this challenge because symbols are immutable and so if the guess is higher than the answer, the answer is always :high and that won't change. Symbols are also interpreted faster by the computer which makes a code more efficient overall.










