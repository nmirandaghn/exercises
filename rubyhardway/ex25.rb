module Ex25
  # This function will break up words for us
  def Ex25.break_words(stuff)
    stuff.split
  end

  # Sort the words
  def Ex25.sort_words(words)
    words.sort
  end

  # Prints the first word after shifting it off
  def Ex25.print_first_word(words)
    puts words.shift
  end

  # Prints the last word after shifting it off
  def Ex25.print_last_word(words)
    puts words.pop
  end
  # Takes a full sentence and returns the sorted words 
  def Ex25.sort_sentence(sentence)
    words = Ex25.break_words(sentence)
    Ex25.sort_words(words)
  end

  # Prints the first and last words of the sentence
  def Ex25.print_first_and_last(sentence)
    words = break_words(sentence)
    puts print_first_word(words)
    puts print_last_word(words)
  end

  # Sorts the words then prints the first and last one
  def self.print_first_and_last_sorted(sentence)
    words = Ex25.sort_sentence(sentence)
    Ex25.print_first_word(words)
    Ex25.print_last_word(words)
  end
end

