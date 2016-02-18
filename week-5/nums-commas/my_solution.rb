# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Write a method separate_comma which takes a positive integer as its input and returns a comma-separated integer as a string.

# 0. Pseudocode

# convert integer to string ==> 1000 becomes "1000"
# reverse! string ==> "1000" becomes "0001"
# if string.length is <= 3 return string ==> "500"





# else if string.length >= 4 && counter = 3, insert ","
# counter = 0 
# counter += 1
#reverse string 
#output string

# while counter = 3 insert comma
# reset counter after each comma insertion?

#   if integer.length >= 4
#  integer.each { |number| p integer[-2] + ","}
# end



# 1. Initial Solution
  
def seperate_comma(integer)
  integer = integer.to_s.reverse
  if integer.length <= 3
      p integer.reverse
  end
  
  counter = 0 
  # until counter == 3

  
  if integer.length >= 4
    p integer + "," 
    counter =+1   
end
  

  p integer.reverse

end

seperate_comma(4000)





# def create_new_list(string)
#   empty_list = Hash.new
  
#   string = string.split(" ")
#   string.each { |item| empty_list[item] = 0 }
#   empty_list 
# end


# def add_item(empty_list, item, quantity)  
#  empty_list[item] = quantity   
# end

# def remove_item(empty_list, item)   
# empty_list.delete(item) 
# end

# def update_quantity(empty_list, item, quantity)   
# empty_list[item] = quantity
# end

# def print_list(empty_list) 
# empty_list.each { |item, quantity| puts "#{item}: #{quantity}" } 
# end
  
# empty_list = create_new_list(" ")
# # puts empty_list 
# add_item(empty_list, "Lemonade", 2) 
# add_item(empty_list, "Tomatoes", 3) 
# add_item(empty_list, "Onions", 1)
# add_item(empty_list, "Ice Cream", 4) 
# # puts empty_list 
# remove_item(empty_list,"Lemonade") 
# # puts empty_list 
# update_quantity(empty_list, "Ice Cream", 1) 
# # puts empty_list 
# print_list(empty_list)



# 2. Refactored Solution




# 3. Reflection