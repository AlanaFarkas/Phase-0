# Build a simple guessing game
# Your GuessingGame class should be initialized with an integer called answer.

# Define an instance method GuessingGame#guess which takes an integer called guess as its input. guess should return the symbol :high if the guess is larger than the answer, :correct if the guess is equal to the answer, and :low if theguess is lower than the answer.

# Define an instance method GuessingGame#solved? which returns true if the most recent guess was correct and false otherwise.


# I worked on this challenge by myself.
# I spent 30 minutes on this challenge.

# Pseudocode

# Input: integer
# Output: symbol
# Steps:


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
  		return :high
  	elsif @guess == @answer
  		return :correct
  	elsif @guess < @answer
  		return :low  		
  	end
  end

  def solved?
  	if @guess == @answer
  		return true
  	else
  		return false 
  	end  			
  end

end





# Reflection