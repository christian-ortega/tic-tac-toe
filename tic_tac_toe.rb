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
	
	def game
		update_display
		until game_over?
			turn(1)
			update_display
			break if game_over?
			turn(2)
			update_display
		end
		puts "GAME OVER"
	end

	def game_over?
		return true if full_board? || player_won?
		return false
	end

	def player_won?
		return true if tiles_equal?(0, 1, 2) || 
										tiles_equal?(3, 4, 5) || 
										tiles_equal?(6, 7, 8) ||
										tiles_equal?(0, 3, 6) ||
										tiles_equal?(1, 4, 7) ||
										tiles_equal?(2, 5, 8) ||
										tiles_equal?(0, 4, 8) || 
										tiles_equal?(2, 4, 6)
		return false
	end

	def tiles_equal?(index_1, index_2, index_3)
		[@board[index_1], @board[index_2], @board[index_3]].uniq.length == 1
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

	def fill_board
		@board = Array.new(8, "X")
		@board.push(9)
	end
	def full_board?
		@board.each do |e|
			return false if integer?(e)
		end
		return true
	end

	def integer?(element)
		element.class == Integer
	end
end

a = TicTacToe.new
a.game