# Leap Years

# I worked on this challenge with Wesley El-Amin.


# Your Solution Below

def leap_year?(year)
	if year % 4 == 0 && year % 100 != 0
		return true
	elsif year % 400 == 0
		return true
	else
		return false
	end
end

puts "Hey is your year a leap year? Input to find out!"
year = gets.chomp.to_i

leap_year?(year)
