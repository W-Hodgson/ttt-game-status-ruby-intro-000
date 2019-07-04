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
  WIN_COMBINATIONS.each do |combination|
    x_victory = combination[0] == "X" && combination[1] == "X" && combination[2] == "X"
    o_victory = combination[0] == "O" && combination[1] == "O" && combination[2] == "O"
    if x_victory || o_victory
      return combination
    end
  end
end

# def won?(board)
#   winning_array = WIN_COMBINATIONS.select do |combination|
#     if position_taken?(board, combination[0]) && position_taken?(board, combination[1]) && position_taken?(board, combination[2])
#       combination
#     else
#       false
#     end
#   end
#   if winning_array != [] and winning_array.length == 1
#     winning_array[0]
#   else
#     false
#   end
# end
