board = [" ", " ", " ", " ", " ", " ", " ", " ", " ",]
# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant: # write an array for each win combination
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8], # Bottom row
  [0,3,6], # Left column
  [1,4,7],  # Middle column
  [2,5,8], # Right column
  [0,4,8], # Left diagonal
  [2,4,6]  # Right diagonal
]

# def won?(board)
#   WIN_COMBINATIONS.find do |win_combination|
#      board[win_combination[0]] == board[win_combination[1]] && board[win_combination[0]] == board[win_combination2]] && position_taken?(board,win_combination[1])
#    end
#  end

# Define won? method
def won?(board)
    # for each win_combination in WIN_COMBINATIONS, win_combination is a 3 element array of indexes that compose a win, [0,1,2]
   WIN_COMBINATIONS.each do |win_combination|
#   # grab each index from the win_combination that composes a win.
  win_index_1 = win_combination[0]
  win_index_2 = win_combination[1]
  win_index_3 = win_combination[2]
  position_1 = board[win_index_1] # load the value of the board at win_index_1
  position_2 = board[win_index_2] # load the value of the board at win_index_2
  position_3 = board[win_index_3] # load the value of the board at win_index_3
    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return win_combination # return the X win_combination indexes that won.
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
        return win_combination # return the O win_combination indexes that won.
    elsif position_taken?(board, index) == true
      false      
    else
      false
    end
  end
end

def full?(board)
  if board.include?("") # => then not full
    return false
  elsif board.include?(" ") # => then not full
    return false
  else # => then full
    true
  end
end

def draw?(board)
  won?(board) == nil && full?(board) == true
end

def over?(board)
  if draw?(board) == true || won?(board) == true || full?(board) == true
    true
  end
end

def winner(board)
  if won? == 0 && position_1 == "X" && position_2 == "X" && position_3 == "X"
    return "X"
  elsif won? == 0 && position_1 == "O" && position_2 == "O" && position_3 == "O"
    return "O"
  else
    return "nil"
  end
end
