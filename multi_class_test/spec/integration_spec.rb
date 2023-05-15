require 'diary_entry'
require 'diary'

RSpec.describe 'integration' do
  context "after adding entries" do
    it "lists out the entries added" do
      diary = Diary.new
      diary_entry_1 = DiaryEntry.new("my_title", "my_contents")
      diary_entry_2 = DiaryEntry.new("my_title 2", "my_contents 2")
      diary.add(diary_entry_1)
      diary.add(diary_entry_2)
      expect(diary.all).to eq [diary_entry_1, diary_entry_2]
    end

    describe "word couting behaviour" do
      it "counts the words in all diary entries' contents" do
        diary = Diary.new
        diary_entry_1 = DiaryEntry.new("my title", "my contents")
        diary_entry_2 = DiaryEntry.new("my title 2", "my contents 2")
        diary.add(diary_entry_1)
        diary.add(diary_entry_2)
        expect(diary.count_words).to eq 5
      end
    end

    describe "reading time behaviour" do
      it "fails when wpm is 0" do
        diary = Diary.new
        diary_entry_1 = DiaryEntry.new("my title", "my contents")
        diary.add(diary_entry_1)
        expect { diary.reading_time(0) }.to raise_error("WPM must be above zero")
      end

      it "calculates the reading time for entries" do
        diary = Diary.new
        diary_entry_1 = DiaryEntry.new("my title", "my contents")
        diary_entry_2 = DiaryEntry.new("my title 2", "my contents 2")
        diary.add(diary_entry_1)
        diary.add(diary_entry_2)
        expect(diary.reading_time(2)).to eq 3
      end
    end

    describe "best reading time entry behaviour" do
      context "where we just have one entry and it is readable in the time" do
        it "returns that entry" do
          diary = Diary.new
          diary_entry_1 = DiaryEntry.new("my title", "my contents")
          diary.add(diary_entry_1)
          expect(diary.find_best_entry_for_reading_time(2,1)).to eq diary_entry_1
        end
      end
      context "where we just have one entry and it is unreadable in the time" do
        it "returns nil" do
          diary = Diary.new
          diary_entry_1 = DiaryEntry.new("my title", "my contents longer")
          diary.add(diary_entry_1)
          expect(diary.find_best_entry_for_reading_time(2,1)).to eq nil
        end
      end
      context "where we have multiple entries" do
        it "returns the longest entry a user could read in this time" do
          diary = Diary.new
          best_entry = DiaryEntry.new("my title", "one two")
          diary.add(DiaryEntry.new("my title", "one"))
          diary.add(best_entry)
          diary.add(DiaryEntry.new("my title", "one two three"))
          diary.add(DiaryEntry.new("my title", "one two three four"))
          expect(diary.find_best_entry_for_reading_time(2,1)).to eq best_entry
        end
      end
    end
  end
end

