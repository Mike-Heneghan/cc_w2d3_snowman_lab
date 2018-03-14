require("minitest/autorun")
require_relative("../hidden_word.rb")

class TestHidden_Word < MiniTest::Test

  def setup

    @word1 = "Lunch"
    @word2 = "String with spaces"

    @hidden_word1 = Hidden_Word.new(@word1)
    @hidden_word2 = Hidden_Word.new(@word2)

    @guess1 = "u"
    @guess2 = "c"

  end

  def test_of_hidden_word_creation__no_space
    display_word_given = @hidden_word1.display()
    word_given = @hidden_word1.word()
    assert_equal(@word1, word_given)
    assert_equal("*****", display_word_given)
  end

  def test_letter_in_guess
    assert_equal(true, @hidden_word1.letter_in_guess(@guess1))
  end

  def test_reveal_guessed_letter
  end 

end
