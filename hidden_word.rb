

class Hidden_Word

  attr_reader :hidden_word

  def initialize(input_word)

    @hidden_word = input_word



  end

  # def display(guesses = [])
  #   displayed_word = ""
  #   for char in @hidden_word.split('')
  #     if guesses.include?(char) || char == " "
  #       displayed_word << char
  #     else
  #       displayed_word << "*"
  #     end
  #   end
  #   return displayed_word
  # end
  #
  # def display
  #   word = @hidden_word
  #   answer = @hidden_word.gsub(/[#{word}]/, "*")
  #   return answer
  # end

  def display
    word_length = @hidden_word.length
    for i in 0...word_length
      unless @hidden_word[i] == " " then @hidden_word[i] = "*"
      end
    end
    return @hidden_word
  end
  #
  # def display_guess(guessed_letter)
  #   word_length = @hidden_word.length
  #   for i in 0...word_length
  #     unless @hidden_word[i] == " " then @hidden_word[i] = "*"
  #     end
  #   end
  #   return @hidden_word
  # end


  def letter_in_guess(guessed_letter)
    return @hidden_word.include?(guessed_letter)
  end

  # def reveal_guessed_letter(guessed_letter)
  #   if @word.letter_in_guess(guessed) == true
  #     @display =

end
