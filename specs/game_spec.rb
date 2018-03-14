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

    @guess1 = "u"
    @guess2 = "c"
    @guess3 = "x"
  end

  def test_of_game_creation
    assert_equal(@player1, @game1.player())
    assert_equal(@word1, @game1.game_word.hidden_word())
    assert_equal(Array, @game1.guessed_letters.class)
  end

  def test_of_user_makes_guess__in_word
    @game1.user_makes_guess(@guess1)
    assert_equal(1, @game1.guessed_letters.length)
  end

  def test_of_user_makes_guess__not_in_word
    @game1.user_makes_guess(@guess3)
    assert_equal(0, @game1.guessed_letters.length)
  end
  # def test_of_guessed_letters__not_in_word
  #   result = @game1.game_word.letter_in_guess(@guess3)
  #   assert_equal(false, result)
  #   assert_equal(0, @game1.guessed_letters.length)
  # end

end
