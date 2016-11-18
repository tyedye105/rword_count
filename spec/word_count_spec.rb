require('rspec')
require('word_count')

  describe ("String#word_count") do
    it("Will output the number of instances of a word in a sentence regardless of case") do
      expect("this is a cat".word_count("cat")).to(eq("The word is repeated 1 time(s)"))
    end

    it("Will output the number of instances of a word in a sentence regardless of case") do
      expect("that is a Dog".word_count("dog")).to(eq("The word is repeated 1 time(s)"))
    end

    it("Will output the number of instances of a word despite having a question mark next to it") do
      expect("What is that bird?".word_count("bird")).to(eq("The word is repeated 1 time(s)"))
    end
    it("Will output the number of instances of word despite punctuation")do
      expect("It's Godzilla!! And Godzilla's kid!".word_count("godzilla")).to(eq("The word is repeated 1 time(s)"))
    end
  end
