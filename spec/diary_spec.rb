# A method called count_words that takes a string as 
# an argument and returns the number of words in that
# string.

require 'diary'

RSpec.describe "make_snippet" do
  it "returns the first 5 words of a string" do
    expect(make_snippet("I saw some cute dogs earlier today on walk")).to eq "I saw some cute dogs..."
  end
end

RSpec.describe "make_snippet" do
  it "returns the first 5 words of a string under 5 words long" do
    expect(make_snippet("I saw some dogs")).to eq "I saw some dogs"
  end
end

RSpec.describe "count_words" do
  it "returns the number of words in a given string" do
    expect(count_words("The quick brown fox jumps over the lazy dog")).to eq 9
  end
end