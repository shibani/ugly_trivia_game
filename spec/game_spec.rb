require 'spec_helper'
require './ugly_trivia/game'

describe "UglyTrivia::Game" do
  describe "add" do
    it "can add a player" do
      game = UglyTrivia::Game.new
      game.add 'Chet'

      expect(game.how_many_players).to eql(1)
    end
  end

  describe "io methods" do
    it 'can announce that the player name was added' do
      game = UglyTrivia::Game.new
      name = "Chet"
      str = "Chet was added"

      expect(game.io_player_added(name)).to eq(str)
    end

    it 'can announce the player\'s order' do
      game = UglyTrivia::Game.new
      name = "Chet"
      game.add(name)
      str = "They are player number 1"

      expect(game.io_player_order).to eql(str)
    end

    it 'can announce the current player' do
      game = UglyTrivia::Game.new
      game.add "Chet"
      str = "Chet is the current player"

      expect(game.io_current_player).to eql(str)
    end

    it 'can announce a roll has been rolled' do
      game = UglyTrivia::Game.new
      roll = 4
      str = 'They have rolled a 4'

      expect(game.io_announce_roll(roll)).to eql(str)
    end

    it 'can announce that a player is getting out of the penalty box' do
      game = UglyTrivia::Game.new
      game.add "Chet"
      str = "Chet is getting out of the penalty box"

      expect(game.io_exiting_penalty_box).to eql(str)
    end

    it 'can announce the player\'s new location' do
      game = UglyTrivia::Game.new
      game.add "Chet"
      location = 0
      str = "Chet's new location is 0"

      expect(game.io_new_location).to eql(str)
    end

    it 'can announce the player is not getting out of the penalty box' do
      game = UglyTrivia::Game.new
      game.add "Chet"
      str = "Chet is not getting out of the penalty box"

      expect(game.io_not_exiting_penalty_box).to eql(str)
    end

    it 'can announce a player\'s gold coin amount' do
      game = UglyTrivia::Game.new
      game.add "Chet"
      str = "Chet now has 0 Gold Coins."

      expect(game.io_player_purse_amount).to eql(str)
    end

    it 'can announce that a player is entering the penalty box' do
      game = UglyTrivia::Game.new
      game.add "Chet"
      str = "Chet was sent to the penalty box"

      expect(game.io_entering_penalty_box).to eql(str)
    end

    it 'can announce a correct answer' do
      game = UglyTrivia::Game.new
      str = "Answer was corrent!!!!"

      expect(game.io_correct_answer).to eql(str)
    end

    it 'can announce a wrong answer' do
      game = UglyTrivia::Game.new
      str = "Question was incorrectly answered"

      expect(game.io_wrong_answer).to eql(str)
    end

    it 'can announce the current category' do
      game = UglyTrivia::Game.new
      str = "The category is Pop"

      expect(game.io_current_category).to eql(str)
    end
  end
end