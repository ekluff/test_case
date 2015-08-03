class String
  prepositions = ["a", "and", "apud", "the", "this"]
  # special = ["mcduff"]

  define_method(:title_case) do
    split_sentence = self.split()
    split_sentence.each() do |word|
      # unless special.include?(word.downcase())
      word.capitalize!()
      if prepositions.include?(word.downcase())
        word.downcase!()
      end
      # end

    end

    split_sentence[0].capitalize!() #Capitalizes first letter and lowercases rest of first word in sentence. Modifies special cases undesirably. Could not figure out how to leave special cases alone while capitalizing all other first words.
    split_sentence.join(" ")

  end
end
