require 'reminder'

RSpec.describe Reminder do
  context "takes a name, takes a task to do, and then return a string 'task, name'" do
    it "nothing is entered for name" do
      expect { Reminder.new("") }.to raise_error "Please enter a name"
    end
    it "nothing is entered for task" do
      reminder = Reminder.new("John")
      expect { reminder.remind_me_to("") }.to raise_error "Please enter a task"
    end
    it "takes a name, takes a task to do, and then return a string 'task, name'" do
      reminder = Reminder.new("John")
      reminder.remind_me_to("walk the dog")
      expect(reminder.remind).to eq ["walk the dog"]
    end
  end
end