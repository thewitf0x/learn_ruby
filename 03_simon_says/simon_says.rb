#write your code here
def echo(str)
    str
end

def shout(str)
    str.upcase
end

def repeat(str, num = 2)
    repeats = []

    (0...num).each { |ele| repeats << str }

    repeats.join(" ")
end

def start_of_word(word, num)
    word[0...num]
end

def first_word(words)
    words_array = words.split(" ")
    words_array[0]
end

def titleize(sentence)
    words = sentence.split(" ")
    new_sentence = []

    words.each_with_index do |word, i|
        if word == words[0] && i == 0
            new_sentence << word.capitalize
        elsif is_little?(word)
            new_sentence << word.downcase
        else
            new_sentence << word.capitalize
        end
    end
    
    new_sentence.join(" ")
end

def is_little?(word)
    little_words = ["the", "at", "and", "over"]
    return true if little_words.include?(word)
    false
end