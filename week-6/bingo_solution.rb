#PSEUDOCODE
# initialize_board, @board = board
# call a random number and letter
# check board columns to see if it includes the same letter/number combo 
  #IF yes, replace value with "X" -----> .replace
#   return board
# else
#   return board


# Check if COLUMN has the number

# N74

#board.EACH sub_array 
# If @call.includes? "B", check index[0] for each array
# If @call.includes? "I", check index[1] for each array
# If @call.includes? "N", check index[2] for each array
# If @call.includes? "G", check index[3] for each array
# If @call.includes? "O", check index[4] for each array

#board.each { |sub_array| if @call.includes "N"
      
      #sub_array.select sub_array[2]

#}
      
      # Looks in the column in each row
      # if it has that number in that column
      # replaces with "X"


# board.each do |row| 
#   if row[0] == 1
#     p "true"
#   end
# end

# 
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