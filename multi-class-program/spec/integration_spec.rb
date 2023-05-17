require 'diary'
require 'diary_entry'
require 'todo'
require 'phone_no'

RSpec.describe 'integration' do
  let(:diary) { Diary.new }
  let(:diary_entry_1) { DiaryEntry.new("2023 08", "my title") }
  let(:diary_entry_2) { DiaryEntry.new("2024", "my second title") }
  let(:todo_one) { Todo.new("walk the dog") }
  let(:todo_two) { Todo.new("mow the lawn") }

  context "after adding a diary entry" do
    it "print entry" do
      diary.add(diary_entry_1)
      expect(diary.print_entries).to eq [diary_entry_1]
    end
    it "print multiple entries" do
      diary.add(diary_entry_1)
      diary.add(diary_entry_2)
      expect(diary.print_entries).to eq [diary_entry_1, diary_entry_2]
    end
  end
  context "todo list" do
    it "add task to todo list and print list" do
      todo = Todo.new("walk the dog")
      diary.add_todo(todo)
      expect(diary.print_todo).to eq [todo]
    end
    it "add multiple tasks, delete a task, and print list" do
      diary.add_todo(todo_one)
      diary.add_todo(todo_two)
      diary.delete_todo(todo_one)
      expect(diary.print_todo).to eq [todo_two]
    end
  end
  context "select entry behaviour" do
    it "where we just have one entry and it is readable in the time, returns that entry" do
      diary.add(diary_entry_1)
      diary.add(diary_entry_2)
      expect(diary.readable_entries(3,1)).to eq diary_entry_2
    end
  end
  describe "extract phone number" do
    it "extracts a phone number from entry and then returns it" do
      diary_entry = DiaryEntry.new("2021.08.01", "the phone number is 07865432101")
      phone_no = PhoneNo.new
      diary.add(diary_entry)
      phone_no.entry(diary_entry.task)
      phone_no.phone_no
      expect(phone_no.phone_no_print).to eq ["07865432101"]
    end
  end


  context "additional tests" do
    it "#count_words" do
      diary.add(diary_entry_1)
      diary.add(diary_entry_2)
      expect(diary.count_words).to eq 5
    end

    it "#reading_time" do
      expect(diary_entry_2.reading_time(1)).to eq 3
    end
  end
end