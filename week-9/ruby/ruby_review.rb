

# PEZ DISPENSER CHALLENGE WEEK 8
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

# class PezDispenser
  
#   def initialize(flavors)
#     @flavors = flavors
#   end

# def pez_count
#   count = @flavors.length
#   return count
# end
  
# def see_all_pez
#   flavor_profiles = {}
#   @flavors.each { |flav| flavor_profiles.push(flav)}
# end

# def add_pez(flavor)
#   @flavors.push(flavor)
# end

# def get_pez
#   @flavors.shift
# end
  
# end 


# # DRIVER TESTS GO BELOW THIS LINE

# flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
# super_mario = PezDispenser.new(flavors)

# puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"
# puts "Here's a look inside the dispenser:"
# puts super_mario.see_all_pez
# puts "Adding a banana pez."
# super_mario.add_pez("banana")
# puts "Now you have #{super_mario.pez_count} pez!"
# puts "Oh, you want one do you?"
# puts "The pez flavor you got is: #{super_mario.get_pez}"
# puts "Now you have #{super_mario.pez_count} pez!"

# Reflection:
# What concepts did you review or learn in this challenge?
# My pair and I wanted to review Ruby classes so we chose this pez challenge to help us review. 

# What is still confusing to you about Ruby?
# My pair and I both agreed that we needed to review our setter and getter methods. We thought an attribute method
# might be useful for this challenge but weren't sure.

# What are you going to study to get more prepared for Phase 1?
# In ruby I'll need to review attribute methods and for JavaScript I need to review accessing nested data in objects!

##########################################################################################################################################

# Reverse Words


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode



# Initial Solution


# def reverse_words(string)
# array = string.split(" ")
  
#   if string.length == 0
#     return string
#   end  
#  if array.length > 0
#    array.map! { |word| word.reverse }
#    p array.join(" ")
#  end

# end


# # Refactored Solution

# def reverse_words(string)
# array = string.split(" ")
  
#   if string.length == 0
#     return string
#   elsif array.length > 0
#    array.map! { |word| word.reverse }
#    return array.join(" ")
#  end

# end



# Reflection

######################################################################################################################################
# Create a Playlist from Driver Code

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.


# Pseudocode

# What are the methods you need to run the driver code?
# Where do those methods belong?
# What should those methods do?
# How can you model real-world behavior through code?
  

# Pseudocode
# DEFINE a Song class that takes two arguments: song_title and artist
# DEFINE a Playlist class that takes three arguments: song_title1 song_title2 song_title3
# DEFINE a method add in playlist that takes an unknown number of arguments and adds them to the playlist 
# DEFINE a method num_of_tracks 
# DEFINE a method play
# DEFINE a method remove
# DEFINE method includes? in playlist 
# DEFINE method play_all in playlist 
# Initial Solution

class Song
  attr_reader :play
  attr_reader :song_title
  attr_reader :artist
 
  def initialize(song_title, artist)
    @song_title = song_title
    @artist = artist
  end
  
  def play
    "#{@song_title} by #{@artist}"
  end
end

class Playlist 
  def initialize(song_title1, song_title2, song_title3)
    @song1 = song_title1
    @song2 = song_title2
    @song3 = song_title3
    @my_playlist = [@song1, @song2, @song3]
  end
  

  def add(*songs)
    songs.each do |x|
      @my_playlist << x
    end
  end
  
  def num_of_tracks
    @my_playlist.length
  end
  
  def remove(*songs)
    songs.map! do |x|
      @my_playlist.delete(x)
    end
     @my_playlist.length
  end
  
  
  def includes?(*songs)
   songs.map! do |x|
    if @my_playlist.include?(x)
      return true
    else
      return false
    end
    end
    p @my_playlist
  end
  
  def play_all
  end
  
end


# Refactored Solution   
  
# DRIVER CODE   
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace")
going_under = Song.new("Going Under", "Evanescence")

my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)


lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")

my_playlist.add(lying_from_you, angels)
my_playlist
my_playlist.num_of_tracks == 5
going_under.play #How would you model a song getting "played" in Ruby? I used `puts` and `sleep`. You can model this however you want.
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display





# Reflection

