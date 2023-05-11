require 'diary_entry_class'

RSpec.describe DiaryEntry do
  context "diary entry" do
    it "constructs title" do
      diary_entry = DiaryEntry.new("my_title", "my_contents")
      expect(diary_entry.title).to eq "my_title"
    end
    it "constructs contents" do
      diary_entry = DiaryEntry.new("my_title", "my_contents")
      expect(diary_entry.contents).to eq "my_contents"
    end
    it "counts words in contents" do
      diary_entry = DiaryEntry.new("my_title", "I wondered lonely as a cloud")
      expect(diary_entry.count_words).to eq 6
    end
    it "estimates the reading time in minutes for the given content" do
      diary_entry = DiaryEntry.new("my_title", "lorem " * 550)
      expect(diary_entry.reading_time(200)).to eq 3
    end
  end
end