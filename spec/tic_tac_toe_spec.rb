require "./lib/tic_tac_toe.rb"

describe TicTacToe do
  subject { TicTacToe.new }

  describe "#game_over?" do
    it "returns true if board is full" do
      subject.change_board ["O", "O", "X", "X", "X", "O", "O", "X", "O"]
      should be_game_over
    end

    it "returns false if board is not full" do
      subject.change_board ["O", "O", "X", "X", "X", "O", "O", "X", 9]
      should_not be_game_over
    end

    it "returns true if top row is X X X" do
      subject.change_board ["X", "X", "X", 4, 5, 6, 7, 8, 9]
      should be_game_over
    end

    it "returns true if middle row is X X X" do
      subject.change_board [1, 2, 3, "X", "X", "X", 7, 8, 9]
      should be_game_over
    end

    it "returns true if bottom row is X X X" do
      subject.change_board [1, 2, 3, 4, 5, 6, "X", "X", "X"]
      should be_game_over
    end

    it "returns true if left column is X X X" do
      subject.change_board ["X", 2, 3, "X", 5, 6, "X", 8, 9]
      should be_game_over
    end

    it "returns true if center column is X X X" do
      subject.change_board [1, "X", 3, 4, "X", 6, 7, "X", 9]
      should be_game_over
    end

    it "returns true if right column is X X X" do
      subject.change_board [1, 2, "X", 4, 5, "X", 7, 8, "X"]
      should be_game_over
    end

    it "returns true if top-left to bottom-right diagonal is X X X" do
      subject.change_board ["X", 2, 3, 4, "X", 6, 7, 8, "X"]
      should be_game_over
    end

    it "returns true if bottom-left to top-right diagonal is X X X" do
      subject.change_board [1, 2, "X", 4, "X", 6, "X", 8, 9]
      should be_game_over
    end

    it "returns true if top row is O O O" do
      subject.change_board ["O", "O", "O", 4, 5, 6, 7, 8, 9]
      should be_game_over
    end

    it "returns true if middle row is O O O" do
      subject.change_board [1, 2, 3, "O", "O", "O", 7, 8, 9]
      should be_game_over
    end

    it "returns true if bottom row is O O O" do
      subject.change_board [1, 2, 3, 4, 5, 6, "O", "O", "O"]
      should be_game_over
    end

    it "returns true if left column is O O O" do
      subject.change_board ["O", 2, 3, "O", 5, 6, "O", 8, 9]
      should be_game_over
    end

    it "returns true if center column is O O O" do
      subject.change_board [1, "O", 3, 4, "O", 6, 7, "O", 9]
      should be_game_over
    end

    it "returns true if right column is O O O" do
      subject.change_board [1, 2, "O", 4, 5, "O", 7, 8, "O"]
      should be_game_over
    end

    it "returns true if top-left to bottom-right diagonal is O O O" do
      subject.change_board ["O", 2, 3, 4, "O", 6, 7, 8, "O"]
      should be_game_over
    end

    it "returns true if bottom-left to top-right diagonal is O O O" do
      subject.change_board [1, 2, "O", 4, "O", 6, "O", 8, 9]
      should be_game_over
    end
  end
end