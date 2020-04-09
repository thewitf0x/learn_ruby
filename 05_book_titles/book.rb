require "byebug"

class Book
  # write your code here
  attr_accessor :title

  #they want an instance variable because the spec says @book
  def title
    make_title(@title)
  end

  def make_title(new_title)
    if new_title.include?(" ")
      capitalize_words(new_title)
    else
      new_title.capitalize
    end
  end

  def capitalize_words(some_words)
    conjunctions = ["and", "to", "at", "the", "of", "in", "it", "a", "is", "an"]
    new_words = some_words.split(" ")
    new_sentence = []

    new_words.each_with_index do |word, i|
      if i == 0 #if it's the first word, always capitalize
        new_sentence << word.capitalize
      elsif !conjunctions.include?(word)
        new_sentence << word.capitalize
      else
        new_sentence << word
      end
    end
    return new_sentence.join(" ")
  end
end
