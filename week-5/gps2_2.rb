
#Method to create a new list input: String steps:  Create a new hash Create a
#hash with default values at zero Print the hash  output: Hash

# Method to add an item to a list input: item name and optional quantity
# steps: create method that takes item and quantity and adds them to the hash
# output: Hash with new item and quantity

# Method to remove an item from the list input: list, item name steps:
# removes inputted item from hash output: Hash - item removed

# Method to update the quantity of an item #def update_quantity(value) #
input: value # steps: # update value of key # output: Hash with updated value

# Method to print a list and make it look pretty def hash_to_string(hash)
# input: hash steps: convert hash to a string output: string

def create_new_list   return Hash.new(0) end

def add_item(empty_list, item, quantity)   empty_list[item] = quantity   end

def remove_item(empty_list, item)   empty_list.delete(item) end

def update_quantity(empty_list, item, quantity)   empty_list[item] = quantity
end

def print_list(empty_list) empty_list.each { |item, quantity| puts "#{item}:
#{quantity}" } end
  
empty_list = create_new_list puts empty_list add_item(empty_list, "Lemonade",
2) add_item(empty_list, "tomatoes", 3) add_item(empty_list, "Onions", 1)
add_item(empty_list, "Ice Cream", 4) puts empty_list remove_item(empty_list,
"Lemonade") puts empty_list update_quantity(empty_list, "Ice Cream", 1) puts
empty_list print_list(empty_list)

# Release 5: Reflect

# # What did you learn about pseudocode from working on this challenge? 
# -I learned that I pseudocode best in plain English, instead of ruby shorthand.
# Our instructor for this challenge also let us know that many programmers keep
# pseudocode and comments toward the top of the screen, and driver code at the
# bottom.


# What are the tradeoffs of using Arrays and Hashes for this challenge? 
#-I don't see how an array could be used to complete this assignment. My partner
# and I created an empty array at the start to be able to compile a collection
# of keys and values which were needed in order to keep a list of grocery items
# and their quantities.

# What does a method return?  
# -A method returns the last value accessed by the method.

# What kind of things can you pass into methods as arguments?  
# -For this challenge, we passed list, items, and quantity to our methods.

# How can you pass information between methods? What concepts were solidified in
# this challenge, and what concepts are still confusing?
# -Well, passing return values between methods was something I was struggling with before starting this challenge. In fact, I'm not sure I considered it before this challenge. I'm glad to get my wheels turning on this topic and understand the code my partner and I worked out as written, but we were given the clue about naming/passing return values between methods. I'm writing this on Monday and I hope that this week I'm able to practice these concepts.





