require 'diary_entry'

RSpec.describe DiaryEntry do
  context "diary entry" do
    it "constructs title" do
      diary_entry = DiaryEntry.new("my_title", "my_contents")
      expect(diary_entry.title).to eq "my_title"
    end
    it "constructs contents" do
      diary_entry = DiaryEntry.new("my_title", "my_contents")
      expect(diary_entry.contents).to eq "my_contents"
      expect(diary_entry.title).to eq "my_title"
    end
    it "counts words in contents" do
      diary_entry = DiaryEntry.new("my_title", "I wondered lonely as a cloud")
      expect(diary_entry.count_words).to eq 6
    end
    it "estimates the reading time in minutes for the given content" do
      diary_entry = DiaryEntry.new("my_title", "lorem " * 550)
      expect(diary_entry.reading_time(200)).to eq 3
    end
    it "returns 0 if contents is empty" do
      diary_entry = DiaryEntry.new("my title", "")
      expect(diary_entry.reading_time(2)).to eq 0
    end
    it "returns one if contents is one word" do
      diary_entry = DiaryEntry.new("my title", "one")
      expect(diary_entry.reading_time(2)).to eq 1
    end
    it "returns a reading time for the contents" do
      diary_entry = DiaryEntry.new("my title", "one two three four five")
      expect(diary_entry.reading_time(2)).to eq 3
    end
    it "fails when given a wpm of 0" do
      diary_entry = DiaryEntry.new("my_title", "one two three")
      expect { diary_entry.reading_time(0) }.to raise_error "WPM must be above zero"
    end
  end
end