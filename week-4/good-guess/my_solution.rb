# Good Guess

# I worked on this challenge by myself.


# Your Solution Below

def good_guess?(number)
	if number == 42
		return true
	else 
		return false
end
end

puts "Hey wanna input a number?"
number = gets.chomp.to_i

good_guess?(number)