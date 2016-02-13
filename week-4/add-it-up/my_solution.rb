# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with: Julie Giraldi.

# 0. total Pseudocode
# make sure all pseudocode is commented out!
# Input: Array
# Output: Integer
# Steps to solve the problem.

# 1. total initial solution

=begin
def total(array)
sum = For each number in array
add number.next
return sum
end
=end

# 3. total refactored solution

def total(array)
    sum = 0

    array.each do |number|
        sum = sum + number
    end
       return sum
end

######################################


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: Array
# Output: String
# Steps to solve the problem.


# 5. sentence_maker initial solution
=begin

def sentence_maker(array)
	join items in array to make a string
end 

=end



# 6. sentence_maker refactored solution

def sentence_maker(array)
    array = array.join(" ")
    return array.capitalize.to_s + "."
end













