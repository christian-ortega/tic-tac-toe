class TicTacToe
  attr_accessor :board

  def initialize
    @board = (1..9).to_a
  end

  def update_display
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts '---+---+---'
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts '---+---+---'
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
end

a = TicTacToe.new
a.update_display
