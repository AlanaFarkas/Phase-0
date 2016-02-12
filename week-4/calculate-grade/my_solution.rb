# Calculate a Grade

# I worked on this challenge with Wesley El-Amin.


# Your Solution Below



def get_grade(grade)

	if grade.to_i < 100 && grade.to_i >= 90
		p "A"
	elsif grade.to_i < 90 && grade.to_i >= 80
		p "B"
	elsif grade.to_i < 80 && grade.to_i >= 70
		p "C"
	elsif grade.to_i < 70 && grade.to_i >= 60
		p "D"
	elsif grade.to_i <= 60
		p "F"
	end

end

puts "What was your score?"
grade = gets.chomp

get_grade(grade)