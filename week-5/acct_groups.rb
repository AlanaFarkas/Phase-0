# In this challenge, you will make your own method to automatically create accountability groups from a list of names. You'll want to make of the People in your cohort. Try to get everyone into an accountability group of 4 or 5. Be sure everyone is in a group of at least 3 -- It's no fun if someone is in a group by themself or with one other person.

# Pseudocode: 
# input: array
# output: hash
# steps: There are 57 students in the RockDove cohort. Each student should be placed in an accountability group of 5 people. There will be two people left over.

first, add Student1..Student57 to an array (students = (1..57).to_a)
create a hash (student_groups) with Group1..Group11 keys with values set to zero
group the student array by_groups of 5
set each array of 5 equal to the value of the keys
add remaining students to existing group