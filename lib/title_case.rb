class String
  prepositions = ["a", "and", "apud", "the", "this"]
  special = ["McDuff"]

  define_method(:title_case) do
    split_sentence = self.split()
    split_sentence.each() do |word|
      word.capitalize!()
      if prepositions.include?(word.downcase())
        word.downcase!()
      end
      if special.downcase().include?(word.downcase())
        # code here
      end
    end

    split_sentence[0].capitalize!()
    split_sentence.join(" ")

  end
end
