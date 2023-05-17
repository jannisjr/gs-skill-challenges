require 'todo'

RSpec.describe Todo do
  context "Get a task and acertain if its done or not" do
    it "takes a task and marks it as done" do
      todo = Todo.new("walk the dog")
      todo.mark_done!
      expect(todo.done?).to eq ({"walk the dog"=>true})
    end
    it "takes a task and marks it is not marked as done" do
      todo = Todo.new("walk the dog")
      expect(todo.done?).to eq ({"walk the dog"=>false})
    end
    it "prints error if no task is entered" do
      expect { Todo.new("") }.to raise_error "Please enter a task"
    end
  end
  context "return a key, value hash that contains the task and true or false depending on if it has been completed" do
    it "contains a task that has been completed" do
      todo = Todo.new("walk the dog")
      todo.mark_done!
      expect(todo.done?).to eq ({"walk the dog" => true})
    end
  end
end