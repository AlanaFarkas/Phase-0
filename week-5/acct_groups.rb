

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

#INITIAL SOLUTION
students = (1..57).to_a #turns list of students into array

def accountability_groups(students)
num_of_groups = (1..15).to_a #turns number of groups needed into an array

student_groups = Array.new #array of arrays of 4 or 5 students 
acct_groups = Hash.new #keys[num_of_groups], value(student_groups)

students.each_slice(4) { |s| student_groups << s } #returns array of 14 groups of 4, 1 group of 1

leftover = student_groups.pop #assigns variable name to the group of 1 student

student_groups[-1].push leftover #pushes 1 leftover student into the 14th group 

num_of_groups.each_with_index { |i, j| acct_groups[i]=student_groups[j] } #assigns number of groups needed (15 groups) as the hash keys and assigns each student group to a key's value.

p acct_groups

end

accountability_groups(students)

#REFACTORED SOLUTION

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

#Reflection:
# What was the most interesting and most difficult part of this challenge?
# The most difficult part of this challenge was using interating over the multi-dimensional array to assign key-value pairs to my hash.

# Do you feel you are improving in your ability to write pseudocode and break the problem down?
# I do feel that my pseudocoding abilities are getting stronger with each challenge I do and I refer back to my pseudocode often when writing my solution.

# Was your approach for automating this task a good solution? What could have made it even better?
# I think my code runs for the 57 students very well but my method does not accept arguements of any other number. I interpreted this challenge to mean only for the students in our cohort, not any number of students from any cohort so it's very specific. If I had more time I would try and add extra complexity so that any number argument can be given and produce even groups. That would make my code better.

# What data structure did you decide to store the accountability groups in and why?
#I wanted my output to be a hash. For 57 students to be split into groups of 4 or 5 evenly, I needed to create 14 groups. I wanted each key in the hash to represent one of the 14 groups, and each value to include either 4 or 5 students.

# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
# My initial solutions often use built-in methods and so I did not do much refactoring. However, in my intial solution, to keep everything clear to me as I code, I comment next to each line of code what I expect that code to return. In my refactored code I removed the comments.

