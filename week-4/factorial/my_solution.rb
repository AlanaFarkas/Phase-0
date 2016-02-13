# Factorial

# I worked on this challenge Julia Giraldi (and Laura Crowe during office hours).

 def factorial(number)  
  if number == 0
    return 1
  end
 
  product = 1
  
  for number in (1..number)
    product = product * number
  	
  end
 
 return  product
 end




