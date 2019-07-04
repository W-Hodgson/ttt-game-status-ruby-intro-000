# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
]

def won?(board)
  winning_array = WIN_COMBINATIONS.select do |combination|
    x_victory = board[combination[0]] == "X" && board[combination[1]] == "X" && board[combination[2]] == "X"
    o_victory = board[combination[0]] == "O" && board[combination[1]] == "O" && board[combination[2]] == "O"
    if x_victory || o_victory
      combination
    else
      false
    end
  end
  if winning_array != [] && winning_array.length == 1
    winning_array[0]
  else
    false
  end
end

def full?(board)

end
