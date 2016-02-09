# Analyze the Errors

# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
	#errors.rb
#
# 2. What is the line number where the error occurs?
	#170
#
# 3. What is the type of error message?
	#Syntax error
#
# 4. What additional information does the interpreter provide about this type of error?
	#The interpreter reads "unexpected end-of-input, expecting keyword_end".
#
# 5. Where is the error in the code?
	#Line 17. The interpretor was expecting an "end" to finish the cartman_hates method. 
#	
# 6. Why did the interpreter give you this error?
##The interpretor was expecting an "end" to finish the cartman_hates method. Without the additional "end" added on line 17, the code is not written in the proper syntax and therefore fails the test, resulting in a syntax error.

# --- error -------------------------------------------------------

def south_park
end
# 1. What is the line number where the error occurs?
	#Line 40

# 2. What is the type of error message?
	#The interpretor reads "undefined local variable or method"
#
# 3. What additional information does the interpreter provide about this type of error?
	#The interpretor also informs me that there is a "Object (NameError)"

# 4. Where is the error in the code?
	#Lines 41 and 42. 
#
# 5. Why did the interpreter give you this error?
	#The method was not written/named properly and did not have a defined ("def") method with an "end" tag. I added "def" and "end" to make the code pass. 

# --- error -------------------------------------------------------

def cartman()
end

# 1. What is the line number where the error occurs?
	#Line 60
#
# 2. What is the type of error message?
	#The interpretor reads "undefined method `cartman'"

# 3. What additional information does the interpreter provide about this type of error?
	#The interpretor also reads "NoMethodError"

# 4. Where is the error in the code?
	#Line 60. The cartman() method is not properly defined.

# 5. Why did the interpreter give you this error?
	#The cartman() method is not properly defined and so I added the necessary "def" and "end" code to make the code pass.

# --- error -------------------------------------------------------

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase

# 1. What is the line number where the error occurs?
	#Line 80

# 2. What is the type of error message?
	#The interpretor reads "ArgumentError".
	
# 3. What additional information does the interpreter provide about this type of error?
	#The interpretor reads "wrong number of arguments (1 for 0)"

# 4. Where is the error in the code?
	#Line 84. This method does not take arguments, but an argument has been passed to the method on line 84 anyway.

# 5. Why did the interpreter give you this error?
	#The method as written does not take arguments and so I removed the argument from the method when it is called on line 84.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("Up ya nose with a rubber hose!")

# 1. What is the line number where the error occurs?
	#Line 103

# 2. What is the type of error message?
	#The interpretor reads "ArgumentError"

# 3. What additional information does the interpreter provide about this type of error?
	#The interpretor also reads "wrong number of arguments (0 for 1)"

# 4. Where is the error in the code?
	#Line 107. 

# 5. Why did the interpreter give you this error?
	#The method when called should have an argument passed to it. As written, it did not have any argument passed to it. I added an argument to make the code pass.



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming', "Alana")

# 1. What is the line number where the error occurs?
	#Line 128

# 2. What is the type of error message?
	#The interpretor reads "ArgumentError"

# 3. What additional information does the interpreter provide about this type of error?
	#The interpretor also reads "wrong number of arguments (1 for 2)"

# 4. Where is the error in the code?
	#Line 132. The method is called with one argument instead of two.

# 5. Why did the interpreter give you this error?
	#When the method was called originally on line 132, only one argument was passed to the method when this method should have two arguments passed. I added my name as the second argument to make the code pass.

# --- error -------------------------------------------------------

"Respect my authoritay!"*5

# 1. What is the line number where the error occurs?
	#Line 151

# 2. What is the type of error message?
	#The interpretor reads "TypeError"

# 3. What additional information does the interpreter provide about this type of error?
	#The interpretor also reads "String can't be coerced into Fixnum"

# 4. Where is the error in the code?
	#Line 151. The order of operations was backwards.

# 5. Why did the interpreter give you this error?
	#The order of operations was backwards and so I switched the method syntax to read "Respect my authoritay"*5 to make the code pass.

# --- error -------------------------------------------------------

amount_of_kfc_left = 20/2


# 1. What is the line number where the error occurs?
	#Line 170

# 2. What is the type of error message?
	#The interpretor reads ZeroDivisionError

# 3. What additional information does the interpreter provide about this type of error?
	#The interpretor also reads "divided by 0"

# 4. Where is the error in the code?
	#On line 170, the method asks that the number 20 be divided by zero. 

# 5. Why did the interpreter give you this error?
	#Numbers cannot be divided by zero and so the operation cannot be completed. I changed 0 to the number 2 to make the code pass.

# --- error -------------------------------------------------------

require_relative = "cartmans_essay.md"

# 1. What is the line number where the error occurs?
	#Line 190

# 2. What is the type of error message?
	#The interpretor reads LoadError. 

# 3. What additional information does the interpreter provide about this type of error?
	#The interpretor also said "cannot load such file -- (path/to/file)"

# 4. Where is the error in the code?
	#The error is on line 190 where there was a missing "=" sign.

# 5. Why did the interpreter give you this error?
	#The require_relative was an undefined local variable. Adding an "=" between the variable name and the file name allowed the code to pass.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment. 

=begin

Which error was the most difficult to read?
-The LoadError on the last test was the hardest for me to read. It was the first error message to include a file path in its interpretation of the error and it through me off!

How did you figure out what the issue with the error was?
-The path in the message pointed the directory I was in currently and so first I tried creating a file called cartmans_essay.md. That gave me a different error about an undefined variable which gave me the clue about just needing to add the "=" sign to complete the method. And the code turned colors instead of just white text so I took that as a good sign too!

Were you able to determine why each error message happened based on the code? 
-I was able to read them properly. Each error message is very clear and specifically points to where you should look for the error which is pretty fool-proof, especially after reading through the module's explanation of how to read the messages.

When you encounter errors in your future code, what process will you follow to help you debug?
-I will follow the error message line by line to interpret the problem, just as the module directions explain. Easy!

=end









