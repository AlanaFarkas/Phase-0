
# Class Warfare, Validate a Credit Card Number

# For this challenge, you will need to break down the algorithm into the following steps. You will probably want to break these down into individual methods that are called when you run the #check_card method.

# Starting with the second to last digit, double every other digit until you reach the first digit.

# Sum all the untouched digits and the doubled digits (doubled digits need to be broken apart, 10 becomes 1 + 0).

# If the total is a multiple of ten, you have received a valid credit card number!


# I worked on this challenge with Brian Donahue
# I spent 2.5 hours on this challenge.

# Pseudocode

# Input:16 number string, can't be more or less.
# Output:True or false boolean value for whether %10=0
# Steps: 1.First, create an initialization method that raises an ArgumentError if it's not a 16 digit input.
#2.Turn number in to an array of separate numbers in the initialize method and call reverse!
#3. Collect all digits with even number indexes in evens array and odd number indexes in odds array
#4. Split odd indexes into strings into separate digits again to be able to add all the numbers
#5. Push even and odd array together to flatten and add
#6. Check if sum is a multiple of 10, return true or false


# Initial Solution


class CreditCard

  def initialize(number)
    @number = number.to_s.split(//).reverse!
    @number.map! do |x|
        x.to_i
    end
        
    @number
      
    raise ArgumentError, "Input needs to have a length of 16 integers" unless @number.count == 16
  end


  def evens
    even_array = []
    @number.each_with_index do |number, index|
      if index % 2 == 0
        even_array.push(number)
      end
    end
    even_array
  end


  def odds
    odd_array = []
    @number.each_with_index do |number, index|
      if index % 2 != 0
         odd_array.push(number*2)
      end
       odd_array
    end

    odd_array.map! do |number|
      number.to_s.split(//)
    end
    odd_array.flatten!
    odd_array.map! do |number|
      number.to_i
    end
    odd_array
  end

  # def add
  #   @even_array << @odd_array
  #   @even_array.flatten!
  #   @sum = @even_array.inject(:+)
  #   p @sum
  # end
  
  def sum
    evens.concat(odds).inject(:+)
  end


  def check_card
    if sum % 10 == 0
      true
    else
      false
    end
  end
end



#Refactored Solution

class CreditCard

  def initialize(number)
    @number = number.to_s.split(//).reverse!
    @number.map! do |x|
        x.to_i
    end        
    @number      
    raise ArgumentError, "Input needs to have a length of 16 integers" unless @number.count == 16
  end


  def evens
    even_array = []
    @number.each_with_index do |number, index|
      if index % 2 == 0
        even_array.push(number)
      end
    end
    even_array
  end

  def odds
    odd_array = []
    @number.each_with_index do |number, index|
      if index % 2 != 0
         odd_array.push(number*2)
      end
       odd_array
    end

    odd_array.map! do |number|
      number.to_s.split(//)
    end
    odd_array.flatten!
    odd_array.map! do |number|
      number.to_i
    end
    odd_array
  end
  
  def sum
    evens.concat(odds).inject(:+)
  end


  def check_card
    if sum % 10 == 0
      true
    else
      false
    end
  end
end



# Reflection

# What was the most difficult part of this challenge for you and your pair?
# What stumped my pair and I was a flow control issue at the very end -- not a flow control issue within any of the methods in our class, but when we ran driver code and tried to call some of our methods, we were calling return values that hadn't yet been calculated.  

# What new methods did you find to help you when you refactored?
# My pair introduced me to #.inject so that we could more easily add all the numbers in our array. We injected "+" between each of the numbers in our array. It wasn't new, but in refactoring we were also able to use #.concat instead of #.pushing and #.flattening arrays which allowed us to remove a few lines of code from our solution.

# What concepts or learnings were you able to solidify in this challenge?
# Since my pair and I had questions that we couldn't answer together on our own, we went to office hours the next day and the guide explained that most of our instance variables could become local variables instead. That way, we were able to pass methods to other methods in our class, and not have to pass the instance variables around. 

