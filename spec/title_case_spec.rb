require('rspec')
require('title_case')

describe('String#title_case') do
  it("capitalizes the first letter of a word") do
    expect(("beowulf").title_case()).to(eq("Beowulf"))
  end

  it("capitalizes the first letter of all words in a string") do
    expect(("hot color purple").title_case()).to(eq("Hot Color Purple"))
  end

  it ("allows nonalphabetical characters") do
    expect(("0123456789~!@$%^&*()}").title_case()).to(eq("0123456789~!@$%^&*()}"))
  end

  it ("allows capitalization of only the first letters of words") do
    expect(("RaCecar").title_case()).to(eq("Racecar"))
  end

  it ("does not capitalize define prepositions in the middle of a string") do
    expect(("Tacos And Burritos").title_case()).to(eq("Tacos and Burritos"))
  end

  it ("always capitalizes the first word of a string") do
    expect(("apud Smith, Jones").title_case()).to(eq("Apud Smith, Jones"))
  end

end
