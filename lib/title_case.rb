class String
  prepositions = ["a", "and", "apud", "the", "this"]

  define_method(:title_case) do
    split_sentence = self.split()
    split_sentence.each() do |word|
      word.capitalize!()
      if prepositions.include?(word.downcase())
        word.downcase!()
      end

    end

    split_sentence[0].capitalize!()
    split_sentence.join(" ")

  end
end
