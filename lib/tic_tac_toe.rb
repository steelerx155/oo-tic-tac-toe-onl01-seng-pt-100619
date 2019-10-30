require_relative '../lib/tic_tac_toe.rb'
class TicTacToe
  
attr_accessor  :board, :WIN_COMBINATIONS

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

def display_board
  puts self.@board
 end

def initialize
  @board = Array.new(9, " ")
 end
end
 
 
   
 

