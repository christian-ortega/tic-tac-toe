class TicTacToe
	public

  def initialize
		@board = (1..9).to_a
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

	def change_board(new_board)
		@board = new_board[0..8]
	end

	private

	def update_display
		puts "The Board:"
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts '---+---+---'
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts '---+---+---'
		puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
		puts ""
	end

	def turn(player_number)
		symbol = player_symbol(player_number)
		tile_number = nil
		loop do
			puts "Player #{player_number}'s turn"
			print "Enter tile number where you wish to place [ #{symbol} ]: "
			tile_number = gets.chomp.to_i - 1
			puts ""
			break if tile_number.between?(0, 8) && @board[tile_number] != "X" && @board[tile_number] != "O"
			puts "Invalid Entry! Try again."
			puts ""
		end
		@board[tile_number] = symbol
	end

	def player_symbol(player_number)
		return "O" if player_number == 1
		return "X" if player_number == 2
	end

	def full_board?
		@board.each do |e|
			return false unless valid_symbol?(e)
		end
		return true
	end

	def valid_symbol?(element)
		element == "O" || element == "X"
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
end
