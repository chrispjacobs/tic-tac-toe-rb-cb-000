WIN_COMBINATIONS = [
  [0, 1, 2], # top row
  [3, 4, 5], # middle row
  [6, 7, 8], # bottom row
  [0, 3, 6], # left column
  [1, 4, 7], # middle column
  [2, 5, 8], # right column
  [0, 4, 8], # first diagonal pattern
  [2, 4, 6] # second diagonal pattern
]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  return input.to_i - 1
end
def move(array, index, value = "X")
  array[index] = value
end

def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    return true
  else
    return false
  end
end

def valid_move?(board, index)
  if index >= 0 && index <= 8 && position_taken?(board, index) == false
    return true
  else
    return false
  end
end

def move(board, index, player)
  if valid_move?(board, index) == true
    board[index] = player
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  index = input_to_index(input)
  if valid_move?(board, index) == true
    board[index] = "X"
    display_board(board)
  else
  turn(board)
end
end

def turn_count(board)
turns_so_far = 0
  board.each do |occurence|
    if occurence = "X" || occurence = "O"
      turns_so_far += 1
    end
  end
end

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
puts turn_count(board)
