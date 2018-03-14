class Game

  attr_reader :player, :game_word, :guessed_letters

  def initialize(input_player, input_game_word)
    @player = input_player
    @game_word = input_game_word
    @guessed_letters = []
  end

  def user_makes_guess(guess_letter)
    if @game_word.letter_in_guess(guess_letter) == true
      return @guessed_letters << guess_letter
    else
      @player.lives -= 1
    end
  end

end
