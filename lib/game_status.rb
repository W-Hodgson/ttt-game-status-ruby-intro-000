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
    if position_taken?(board, combination[0]) && position_taken?(board, combination[1]) && position_taken?(board, combination[2])
      true
    else
      false
    end
  end
  if winning_array != [] and winning_array.length == 1
    true
  else
    false
  end
end

won?(["X", "X", "X", "O", "O", " ", " ", " ", " "])
