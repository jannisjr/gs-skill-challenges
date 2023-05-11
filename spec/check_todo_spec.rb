require 'check_todo'

RSpec.describe "check_todo" do
  context "check to see if a string of text contains the phrase '#TODO'" do
    it "returns true when #TODO is present in the text" do
      expect(check_todo("#TODO Clean the house")).to eq true
    end

    it "returns false whe #TODO is not present in the text" do
      expect(check_todo("list of songs")).to eq false
    end
  end
end