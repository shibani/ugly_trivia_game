require 'spec_helper'
require './ugly_trivia/game'

describe "UglyTrivia::Game" do
  it "can add a player" do
    game = UglyTrivia::Game.new
    game.add 'Chet'

    expect(game.how_many_players).to eql(1)
  end
end