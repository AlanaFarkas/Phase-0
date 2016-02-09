#Full Name Greeting

puts "Hi, what's your name?"
first_name = gets.chomp
puts "And what's your middle name?"
middle_name = gets.chomp
puts "Mhm now how about your last name?"
last_name = gets.chomp
puts "Well how do you do, #{first_name} #{middle_name} #{last_name}? Nice to meet you."


#Bigger, Better Favorite Number

puts "Hey there, what's your favorite number?"
favorite_num = gets.chomp.to_i
new_favorite_num = favorite_num + 1
puts "Are you sure it isn't #{new_favorite_num} though? It's so much bigger and better."

=begin
Reflection 4.3

-How do you define a local variable?
To define a local variable, create a name for your variable using all lowercase letters, and set it equal to a value. For ex: var name = "Alana".


-How do you define a method?
To define a method you must give it a name and close the method with 'end'. For example a method called "new method" would be defined this way:
	def new method
	end

-What is the difference between a local variable and a method?
A local variable is used to assign a name to a value. A method executes a block of code and likely incorporates variables.

-How do you run a ruby program from the command line?
I would type "ruby [file_name.rb]" to run a ruby program from the command line.

-How do you run an RSpec file from the command line?
I would type "rspec [file_name.rb]" to run an RSpec file in from the command line.

-What was confusing about this material? What made sense?
Most everything made sense as a review of concepts I learned while preparing to apply to DBC, so it felt great to go over this material again. I was a little confused when Chris Pine's book mentioned line spacing/formatting though--wouldn't we do that using CSS somehow? I look forward to finding that out!
=end

4.3.1 -- https://github.com/AlanaFarkas/Phase-0/blob/master/week-4/address/my_solution.rb
4.3.2 -- https://github.com/AlanaFarkas/Phase-0/tree/master/week-4/math
