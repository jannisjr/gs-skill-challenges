require 'reminder'

RSpec.describe Reminder do
  context "if no task is entered raise error" do
    it "nothing is entered for task" do
      reminder = Reminder.new
      expect { reminder.remind_me_to("") }.to raise_error "Please enter a task"
    end
  end
  context "Adding tasks to list" do
    it "takes a task to do, and then returns a list of tasks" do
      reminder = Reminder.new
      reminder.remind_me_to("walk the dog")
      expect(reminder.remind).to eq ["walk the dog"]
    end
    it "takes multiple task to do, and then returns a list of tasks" do
      reminder = Reminder.new
      reminder.remind_me_to("walk the dog")
      reminder.remind_me_to("clean the house")
      expect(reminder.remind).to eq ["walk the dog", "clean the house"]
    end
  end
  context "marking tasks as completed and removing from list" do 
    it "check to see if task is in the list, then remove it and print confirmation"do
      reminder = Reminder.new
      reminder.remind_me_to("walk the dog")
      reminder.remind_me_to("clean the house")
      reminder.remove_task("walk the dog")
      expect(reminder.remind).to eq ["clean the house"]
    end
  end
end