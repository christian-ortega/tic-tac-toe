class TicTacToe
  def initialize
    @board = (1..9).to_a
  end

	def update_display
		puts "The Board:"
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts '---+---+---'
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts '---+---+---'
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
	end
	
	def turn(player_number)
		symbol = player_symbol(player_number)
		puts "Player #{player_number}'s turn"
		print "Enter tile number where you wish to place #{symbol}: "
		# add exception handling
		tile_number = gets.chomp.to_i - 1
		@board[tile_number] = symbol
	end

	def player_symbol(player_number)
		return "O" if player_number == 1
		return "X" if player_number == 2
	end

end

a = TicTacToe.new
a.turn(1)
a.update_display
a.turn(2)
a.update_display