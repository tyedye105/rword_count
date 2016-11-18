require('rspec')
require('word_count')

  describe ("String#word_count") do
    it("will take a sentence, and word from the user, and output the number of times it occurs in the sentence") do
      expect("this is a cat".word_count("cat")).to(eq("The word is repeated 1 time(s)"))
    end
  end
