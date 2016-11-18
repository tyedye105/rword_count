class String
    define_method(:word_count) do |search_word|
      words_array = self.split()
      words_found = 0
      words_array.each() do |word|
        if word == search_word
          words_found = words_found + 1
        else
    end
  end
    "The word is repeated " + words_found.to_s + " time(s)"
  end
end
