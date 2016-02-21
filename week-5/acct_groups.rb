

# Pseudocode: 
# input: array
# output: hash
# steps: There are 57 students in the RockDove cohort. Each student should be placed in an accountability group of 4 people. There will be 1 person left over for one group of 5.

#Define acct_group method
#Create a student array [1..57]
#Iterate over the student array to select every 4 students
#Create empty hash for student groups
#Hash keys should be groups 1-14
#Hash values should be student names
#Divide students evenly between student groups
#add remaining person to a random group

#Initial solution
students = (1..57).to_a 

def accountability_groups(students)
num_of_groups = (1..14).to_a 

student_groups = Array.new 
acct_groups = Hash.new 

students.each_slice(4) { |s| student_groups << s } 

leftover = student_groups.pop

student_groups[-1].push leftover

num_of_groups.each_with_index { |i, j| acct_groups[i]=student_groups[j] } 

p acct_groups

end

accountability_groups(students)

#Refactored solution 

#Reflection:
# What was the most interesting and most difficult part of this challenge?
# 

# Do you feel you are improving in your ability to write pseudocode and break the problem down?
# Was your approach for automating this task a good solution? What could have made it even better?
# What data structure did you decide to store the accountability groups in and why?
# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
