#PSEUDOCODE
# initialize_board, 
# call a random number and letter
# check board columns to see if it includes the same letter/number combo 
  #IF yes, replace value with "X" 
#   return board
# else
#   return board

# INITIAL SOLUTION

        # B    I   N  G   O
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]



class BingoBoard
  attr_reader :bingo_board


  def initialize(board)
    @bingo_board = board
  end 
  
  def call
    letters = ["B", "I", "N", "G", "O"]
    @letter = letters.sample
    number = (1..100).to_a
    @number = number.sample
    @call = "#{@letter}#{@number}"
  end

  
  def check 
    if @letter == "B"
      @bingo_board.each do |row|
        if row[0] == @number
          row[0] = "X"
        end
      end
    end

    
    if @letter == "I"
      @bingo_board.each do |row|
        if row[1] == @number
          row[1] = "X"
        end
      end
    end

    
    if @letter == "N"
      @bingo_board.each do |row|
        if row[2] == @number
          row[2] = "X"
        end
      end
    end

    
      if @letter == "G"
      @bingo_board.each do |row|
        if row[3] == @number
          row[3] = "X"
        end
      end
    end
  
      if @letter == "O"
      @bingo_board.each do |row|
        if row[4] == @number
          row[4] = "X"
        end
      end
    end
  end
  
  def display
    @bingo_board.each do |row|
      p row
    end
  end

end


new_game = BingoBoard.new(board)
p new_game.call
new_game.check
new_game.display

#REFACTORED SOLUTION


        # B    I   N  G   O
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]



class BingoBoard
  attr_reader :bingo_board


  def initialize(board)
    @bingo_board = board
  end 
  
  def call
    letters = ["B", "I", "N", "G", "O"]
    @letter = letters.sample
    number = (1..100).to_a
    @number = number.sample
    @call = "#{@letter}#{@number}"
  end

  
  def check 
    if @letter == "B"
      @bingo_board.each do |row|
        if row[0] == @number
          row[0] = "X" #=> 'X'
        end
      end
    elsif @letter == "I"
      @bingo_board.each do |row|
        if row[1] == @number
          row[1] = "X"
        end
      end
    elsif @letter == "N"
      @bingo_board.each do |row|
        if row[2] == @number
          row[2] = "X"
        end
      end
    elsif @letter == "G"
      @bingo_board.each do |row|
        if row[3] == @number
          row[3] = "X"
        end
      end
    elsif @letter == "O"
      @bingo_board.each do |row|
        if row[4] == @number
          row[4] = "X"
        end
      end
    end
  end
  
  def display
    @bingo_board.each do |row|
    p row
    end
  end

end


new_game = BingoBoard.new(board)
p new_game.call
new_game.check
new_game.display


#REFLECTION

# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
# I think my pseudocode is very elemental but ultimately helpful.

# What are the benefits of using a class for this challenge?
# A class should be used for this challenge because it's a game, and for each new game we want a new bingo ball to be selected and checked against our board each time. 

# How can you access coordinates in a nested array?
# You can access nested arrays by calling their index. So if I had a nested array my_array = [[1], [2, 3, 4]], and I wanted to output only the [2, 3, 4] array, I would do it this way: p my_array[1] => [2, 3, 4].

# What methods did you use to access and modify the array?
# I used .each to access and modify my arrays.

# Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
# I didn't use any new methods in my final initial solution, but in my first attempt I wanted to use #.map! to iterate and modify my arrays but it wasn't working as expected so I switched back to #.each.

# How did you determine what should be an instance variable versus a local variable?
# All my variables are instance variables except when I set my letters variable to be letters = ["B", "I", "N", "G", "O"] and my numbers variable to be number = (1..100).to_a. Although right after I declared those variables I declared new instance variables @letters and @numbers to randomize the letters and numbers for each call.

# What do you feel is most improved in your refactored solution?
# Currently the refactored solution is just a little shorter with one long if/elsif statement instead of seperate if statements for each letter called. I want to see if I can figure out how to use #.each_with_index method but haven't quite gotten my head around that yet..


