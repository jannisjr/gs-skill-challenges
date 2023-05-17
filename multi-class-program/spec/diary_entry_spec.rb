require 'diary_entry'

RSpec.describe DiaryEntry do
  context "Initialize" do
    it "adds two diary entries and then returns them" do
      diary_entry = DiaryEntry.new
      diary_entry.add("This is my first diary entry")
      diary_entry.add("This is my second diary entry")
      expect(diary_entry.list_entries).to eq ["This is my first diary entry", "This is my second diary entry"]
    end
  end
end