class Game

  attr_reader :player, :game_word, :guessed_letters

  def initialize(input_player, input_game_word)
    @player = input_player
    @game_word = input_game_word
    @guessed_letters = []
  end 

end
