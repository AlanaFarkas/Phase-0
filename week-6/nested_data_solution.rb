# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [ [1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]] ]

# attempts:
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================

p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES +5

number_array = [5, [10, 15], [20,25,30], 35]

number_array.flatten!
p number_array.collect! { |element| element + 5 }
p number_array 

# Bonus:

final_array = []
array1 = []
array2 = []

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.flatten!
startup_names.collect! { |element| element + "ly" }
p startup_names

final_array << startup_names[0]
array1 << startup_names[1] << startup_names[2]
p array1
array2 << startup_names[3] << startup_names[4]
p array2 
array1 << array2
p array1
final_array << array1
p final_array


#REFLECTION:
# What are some general rules you can apply to nested arrays?
# I liken nested arrays to folder file paths where if each array was a folder that contained sub folders that contained even more folders! Just knowing how to follow the path is key.

# What are some ways you can iterate over nested arrays?
# My pair and I used the enumerable methods #.collect and #.flatten

# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
# I had never used flatten before which makes iterating over arrays a lot easier, but it was tricky to 'unflatten' the arrays to return the nested arrays back into their original structure. 



