#write your code here
def translate(sentence)
    if sentence.include?(" ")
        words = sentence.split(" ")
    else
        return translate_word(sentence)
    end

    new_words = words.map { |word| translate_word(word) }

    new_words.join(" ")
end

def translate_word(word)
    vowels = "aeiouAEIOU"

    if (starts_consonant?(word) && starts_consonant?(word[1]) &&
         starts_consonant?(word[2])) || word[0..2] == "squ"
        return word[3..-1] + word[0..2] + "ay"
    elsif (starts_consonant?(word) && starts_consonant?(word[1])) || word[0..1] == "qu"
        return word[2..-1] + word[0..1] + "ay"
    elsif starts_consonant?(word)
        return word[1..-1] + word[0] + "ay"
    else
        return word + "ay"
    end
end

def starts_consonant?(word)
    vowels = "aeiouAEIOU"

    return true if !vowels.include?(word[0])
    false
end