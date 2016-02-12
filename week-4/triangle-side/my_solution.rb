
# I worked on this challenge Wesley El-Amin.


# Your Solution Below

def valid_triangle?(a, b, c)
  if a + b > c && a + c > b && b + c > a
    p true
  else
    p false
  end
end


puts "What's the first side of the triangle?"
a = gets.chomp.to_i

puts "What's the second side of the triangle?"
b = gets.chomp.to_i

puts "What's the third side of the triangle?"
c = gets.chomp.to_i

valid_triangle?(a, b, c)