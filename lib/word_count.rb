class String
  define_method(:word_count) do |search_word|
    words_found = 0
    punctuations_array = ["?","!",",",".","'",]
      punctuations_array.each() do |punctuation|
        if include?(punctuation)
          delete!(punctuation)
        end
      end
    words_array = self.downcase().split()
    words_array.each() do |word|
      if word == search_word
        words_found = words_found + 1
      end
    end
      if words_found > 0
        "The word is repeated " + words_found.to_s + " time(s)"
      elsif words_found == 0
        "We couldn't find that word... Is it even in the sentence?"
      end
  end
end
