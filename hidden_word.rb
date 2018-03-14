

class Hidden_Word

attr_reader :word, :display

  def initialize(input_word)

    @word = input_word
    @display = string_to_hidden

  end

  def string_to_hidden()
    return "*" * @word.length
  end

  def letter_in_guess(guessed_letter)
    return @word.include?(guessed_letter)
  end

end
