require 'reading_time'

RSpec.describe "reading_time" do
  context "when given a string of varying length" do
    it "returns 60 when given 200 words" do
      expect(reading_time("lorem " * 200)).to eq 60
    end

    it "returns 1 when given 2 words" do
      expect(reading_time("lorem " * 2)).to eq 1
    end

    it "returns 23 when given 75 words" do
      expect(reading_time("lorem " * 75)).to eq 23
    end

    it "returns 0 when given an empty string" do
      expect(reading_time("")).to eq 0
    end
  end
end