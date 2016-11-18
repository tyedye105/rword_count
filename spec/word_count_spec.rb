require('rspec')
require('word_count')

  describe ("String#word_count") do
    it("Will output the number of instances of a word in a sentence regardless of case") do
      expect("this is a cat".word_count("cat")).to(eq("The word is repeated 1 time(s)"))
    end

    it("Will output the number of instances of a word in a sentence regardless of case") do
      expect("that is a Dog".word_count("dog")).to(eq("The word is repeated 1 time(s)"))
    end

  end
