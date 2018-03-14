

class Hidden_Word

attr_reader :word, :display

  def initialize(input_word)

    @word = input_word
    @display = string_to_hidden

  end

  def string_to_hidden()
    return "*" * @word.length
  end


end
