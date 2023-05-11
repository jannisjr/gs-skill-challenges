require 'verify_string'

RSpec.describe 'verify_string' do
  context "verifying string has capital letter at the beginning and punctuation mark at the end" do
    it "returns 'This is gramatically correct' when text starts with capital letter and ends with punctuation mark" do
      expect(verify_string("Have you ever seen the rain?")).to eq "This is gramatically correct"
    end

    it "returns 'This text has no punctutation mark at the end' when text has no punctuation mark" do
      expect(verify_string("Have you ever seen the rain")).to eq "This text has no punctutation mark at the end"
    end

    it "returns 'This text has no capital letter at the beginning' when text has no capital letter" do
      expect(verify_string("have you ever seen the rain?")).to eq "This text has no capital letter at the beginning"
    end

    it "returns 'This text has no capital letter at the beginning, or punctuation mark at the end' when it has no capital letter at the beginning and no punctuation at the end" do
      expect(verify_string("hey there, here I am")).to eq "This text has no capital letter at the beginning, or punctuation mark at the end"
    end
  end
end