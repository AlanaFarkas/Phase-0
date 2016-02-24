
#Attr Methods

# I worked on this challenge by myself.

# I spent 2 hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:
# When 

class NameData
	attr_reader :name

	def initialize
		@name = "Alana"
	end
end


class Greetings
	
	def initialize
		@namedata = NameData.new
	end

	def salutation
		puts "Hello #{@namedata.name}, how wonderful to see you today!"
	end

end

greeting = Greetings.new
greeting.salutation

# REFLECTIONS

# Release 1:
# What are these methods doing?
# The methods allow for information set inside the instance methods to be modified from outside the class.

# How are they modifying or returning the value of instance variables?
# In order to modify the instance variables from outside the class, we created new methods within the class that will allow us to overwrite the instance variables, like the change_my_occupation=(new_occupation) method. If we call the change_my_occupation method and set it equal to a new occupation, the instance variable will be overwritten by whatever our new occupation is set to.

# Release 2:
# What changed between the last release and this release?
# For this release, an attr_reader :age method was added.

# What was replaced?
# attr_reader :age replaced our #what_is_age method that returned theage. 

# Is this code simpler than the last?
# This code is simpler than the last because attr_reader :age will return the instance variable age that was set inside our #initialize method. No longer do we need to write a method just to return the age instance variable, the attr_reader :age will do it for us. 

# Release 3:
# What changed between the last release and this release?
# For this release, an attr_writer :age has been added.

# What was replaced?
# The attr_writer :age has replaced the #change_my_age method.

# Is this code simpler than the last?
# Adding the attr_writer :age method has eliminated the need to write a #change_my_age method and so it is cleaner and simpler than the last release.

# Release 6:
# What is a reader method?
# A reader method is created so that an instance variable is recognized throughout the class without having to write an explicit method that returns the instance variable. It is written attr_reader :[variable].

# What is a writer method?
# A writer method is created to eliminate the need to write a method to overwrite the instance variable. It is written attr_writer :[variable].

# What do the attr methods do for you?
# The attr methods cut down on lines of code that need to be written, making your code more efficient and readable.

# Should you always use an accessor to cover your bases? Why or why not?
# For security reasons, you should not always use attr_accessor because by doing so, it is too easy to overwrite a value that should not be written over. 

# What is confusing to you about these methods?
# Having to call the .name method in my #salution method's return statement took me a while to get. I was having trouble getting the method to return my name instead of what looked like an object_id?. There was some slack chatter about this very issue and I was able to fix my solution to output the proper string.

