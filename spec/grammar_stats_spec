require 'grammar_stats'

RSpec.describe GrammarStats do
  context 'return true or false depending on whether both a capital letter at the beginning and a punctuation mark at the end are present' do
    it "returns true when both capital letter and punctuation mark are present" do
      grammarstats = GrammarStats.new
      expect(grammarstats.check("Have you ever seen the rain?")).to eq true
    end
    it "return false when no input" do
      grammarstats = GrammarStats.new
      expect(grammarstats.check("")).to eq false
    end
  end
  context "return the percentage of passed values" do
    it "returns 50 percent" do
      grammarstats = GrammarStats.new
      grammarstats.check("Have you ever seen the rain?")
      grammarstats.check("have you ever seen the rain?")
      expect(grammarstats.percentage_good).to eq 50
    end
    it "returns 50 percent" do
      grammarstats = GrammarStats.new
      grammarstats.check("Have you ever seen the rain?")
      grammarstats.check("Have you ever seen the rain?")
      grammarstats.check("Have you ever seen the rain?")
      grammarstats.check("Have you ever seen the rain?")
      grammarstats.check("have you ever seen the rain?")
      expect(grammarstats.percentage_good).to eq 80
    end   
  end
end