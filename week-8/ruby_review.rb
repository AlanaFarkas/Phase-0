

# I worked on this challenge with Meaghan Swanby.
# I spent 1 hours on this challenge.

# As a Pez user, I'd like to be able to "create" a new Pez dispenser with a group of flavors that represent Pez so it's easy to start with a full Pez dispenser.
# Pseudocode:
# DEFINE class PezDispenser
# INITIALIZE instance variables for flavors in pez dispenser
# OUTPUT string declaring new dispenser has been created


# As a Pez user, I'd like to be able to easily count the number of Pez remaining in a dispenser so I can know how many are left.
# Pseudocode: 
# DEFINE pez_count method
# For EACH pez in dispense +=1
# OUTPUT string declaring pez count remaining

# As a Pez user, I'd like to be able to take a Pez from the dispenser so I can eat it.
# Pseudocode: Create eat method to dispense pez 
# Delete first pez
# INITIALIZE get_pez method
# DISPLAY flavor of pez
# DELETE pez from dispenser count


# As a Pez user, I'd like to be able to add a Pez to the dispenser so I can save a flavor for later.
# Pseudocode: 
# DEFINE method add_pez
# += to pez count

# As a Pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order of the flavors coming up.
# Pseudocode: 
# DEFINE see_all_pez 
# method would display pez count and pez flavors



# Initial Solution

# class PezDispenser
  
#   def initialize(flavors)
#     @flavors = flavors
#   end

# def pez_count
#   count = @flavors.length
#   p count
# end
  
# def see_all_pez
#   flavor_profiles = {}
#   @flavors.each do |flav|
#     flavor_profiles[flav] 
#   end
# end

# def add_pez(flavor)
#   @flavors.push(flavor)
# end

# def get_pez
#   @flavors.shift
# end
  
# end  

# Refactor

class PezDispenser
  
  def initialize(flavors)
    @flavors = flavors
  end

def pez_count
  count = @flavors.length
  return count
end
  
def see_all_pez
  flavor_profiles = {}
  @flavors.each { |flav| flavor_profiles.push(flav)}
end

def add_pez(flavor)
  @flavors.push(flavor)
end

def get_pez
  @flavors.shift
end
  
end 


# DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)

puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"
puts "Here's a look inside the dispenser:"
puts super_mario.see_all_pez
puts "Adding a banana pez."
super_mario.add_pez("banana")
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"

# Reflection:
# What concepts did you review or learn in this challenge?
# My pair and I wanted to review Ruby classes so we chose this pez challenge to help us review. 

# What is still confusing to you about Ruby?
# My pair and I both agreed that we needed to review our setter and getter methods. We thought an attribute method
# might be useful for this challenge but weren't sure.

# What are you going to study to get more prepared for Phase 1?
# In ruby I'll need to review attribute methods and for JavaScript I need to review accessing nested data in objects!


