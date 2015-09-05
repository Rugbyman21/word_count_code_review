require('rspec')
require('word_count')

describe('String#word_count') do

  it("scans the sentence for the given word and returns the number of times the word appears") do
    expect("coffee is delicious, coffee taste good".word_count("coffee")).to(eq(2))
  end

  it("scans the sentence for the given word and returns the number of times the word appears regardless of the of case") do
    expect("COFFEE is delicious, coffee TASTE good".word_count("coffee")).to(eq(2))
  end
end
