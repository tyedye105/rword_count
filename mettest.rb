class Array
  define_method(:removePunc) do
    
      punctuation_array.each() do |punc|
        if self.include?(punc)
          self.delete(punc)
        else
          self.join()
        end
        self.join()
      end
      self
    end
end
