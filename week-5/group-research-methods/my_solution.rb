# Research Methods

# I spent 2 hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]

my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
# Pseudocode: Method should take in an array, and return a new array containing words with specific letter.

def my_array_finding_method(array, letter)

array.select! { |element| element.class==String }
array.select! { |element| element.include?(letter)}
p array
end

#Pseudocode: For each value in the hash, if value == number push key into new array

def my_hash_finding_method(source, thing_to_find)
    
    name = Array.new
    source.each { |k, v| 
      if v == thing_to_find 
        name << k
      end }
  p name 

end

# RELEASE 2: Teach others
# Identify and describe the Ruby method(s) you implemented.
# Teach your accountability group how to use the methods
# Share any tricks you used to find and decipher the Ruby Docs

# For my_array_finding_method, I iterated through the array first to select and keep only the elements that identify as Strings, using the .class method so that my array would now only contain String elements. I used a ! (bang) to destruct/save my array with these changes. Once my array had only homogenous elements (strings), I iterated over the array again using the .select! method and the .include? method so that my array would become an array of only elements that included a specific letter. This method took me down a long research rabbit hole. Before I changed the array to include only homogenous elements, I was getting a NoMethodError(FIXNUM) error message. I had to figure out that some methods, like .include cannot work on arrays with heterogenous elements. I gathered some of this information from "The Well-Grounded Rubyist" but you know how that book is...I had to google and use Ruby documentation to really figure out what was wrong.
#
#For my_hash_finding_method, I iterated through my hash's keys and values using the .each method, and for every value that was equal to the number input, the program pushed the key associated with that value into an empty array.




# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#