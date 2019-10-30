require_relative '../lib/tic_tac_toe.rb'

# require_relative '../lib/tic_tac_toe.rb'
class TicTacToe
  
attr_accessor  :board, :WIN_COMBINATIONS, :display_board

 WIN_COMBINATIONS = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [6, 4, 2]
  ]

def initialize
  @board = Array.new(9, " ")
 
end

def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
 
  
  def input_to_index(user_input)
    user_input.to_i - 1
  end


def move(position, char)
    @board[position] = char
  end

def position_taken?(index_i)
    ((@board[index_i] == "X") || (@board[index_i] == "O"))
  end
  
  def valid_move?(index)
    index.between?(0,8) && !position_taken?(index)
  end
  def turn_count
    number_of_turns = 0
    @board.each do |space|
    if space == "X" || space == "O"
        number_of_turns += 1
    end
  end
  return number_of_turns
end

def current_player
    if turn_count % 2 == 0
    "X"
    else
    "O"
  end
  
end  
  