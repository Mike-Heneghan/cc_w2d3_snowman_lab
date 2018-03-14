require("minitest/autorun")
require_relative("../game.rb")
require_relative("../player.rb")
require_relative("../hidden_word.rb")

class TestGame < MiniTest::Test

  def setup

    @word1 = "Lunch"
    @word2 = "String with spaces"

    @hidden_word1 = Hidden_Word.new(@word1)
    @hidden_word2 = Hidden_Word.new(@word2)

    @player1 = Player.new("Mike")
    @player2 = Player.new("Mariana")

    @game1 = Game.new(@player1, @hidden_word1)

  end

  def test_of_game_creation
    assert_equal(@player1, @game1.player())
    assert_equal(@word1, @game1.game_word.word())
    assert_equal(Array, @game1.guessed_letters.class)
  end

end
