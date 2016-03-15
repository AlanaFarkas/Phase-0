# Reverse Words


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode



# Initial Solution


def reverse_words(string)
array = string.split(" ")
  
  if string.length == 0
    return string
  end  
 if array.length > 0
   array.map! { |word| word.reverse }
   p array.join(" ")
 end

end


# Refactored Solution





# Reflection


