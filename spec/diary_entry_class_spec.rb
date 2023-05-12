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

  context "with a contents readable within the time" do
    it "returns the full text" do
      diary_entry = DiaryEntry.new("my_title", "one two three")
      expect(diary_entry.reading_chunk(200, 1)).to eq "one two three"
    end
    it "fails when given a wpm of 0" do
      diary_entry = DiaryEntry.new("my_title", "one tow three")
      expect { diary_entry.reading_chunk(0, 5) }.to raise_error "Reading speed must be above zero"
    end
    it "returns a chunk of the text readable within the time" do
      diary_entry = DiaryEntry.new("my_title", "one two three")
      expect(diary_entry.reading_chunk(2, 1)).to eq "one two"
    end
    it "returns the next chunk next time we are asked" do
      diary_entry = DiaryEntry.new("my_title", "one two three")
      diary_entry.reading_chunk(2, 1)
      chunk = diary_entry.reading_chunk(2, 1)
      expect(chunk).to eq "three"
    end
    it "restarts after reading the whole contents" do
      diary_entry = DiaryEntry.new("my_title", "one two three")
      diary_entry.reading_chunk(2, 1)
      diary_entry.reading_chunk(2, 1)
      chunk = diary_entry.reading_chunk(2, 1)
      expect(chunk).to eq "one two"
    end     
    it "restarts if it finishes exactly on the end" do
      diary_entry = DiaryEntry.new("my_title", "one two three")
      diary_entry.reading_chunk(2, 1)
      diary_entry.reading_chunk(1, 1)
      chunk = diary_entry.reading_chunk(2, 1)
      expect(chunk).to eq "one two"
    end  
  end
end