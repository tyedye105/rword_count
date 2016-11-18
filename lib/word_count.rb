class String
    define_method(:word_count) do |search_word|
      words_array = self.split()
      words_found = 0
      words_array.each() do |word|
        if word == search_word
          words_found = words_found + 1
    end
  end
    if words_found > 0
    "The word is repeated " + words_found.to_s + " time(s)"
  else
    "We couldn't find that word... Is it even in the sentence?"
  end
end
end
