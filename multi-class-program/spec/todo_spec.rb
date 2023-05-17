require 'todo'

RSpec.describe Todo do
  context "initialize" do
    it "add multiple items to todo list, print todo list" do
      todo = Todo.new
      todo.add_task("walk the dog")
      todo.add_task("mow the lawn")
      expect(todo.print_todo).to eq ["walk the dog", "mow the lawn"]
    end
    it "adds 2 items to todo list, then deletes one. Returns todo list" do
      todo = Todo.new
      todo.add_task("walk the dog")
      todo.add_task("mow the lawn")
      todo.delete_task("mow the lawn")
      expect(todo.print_todo).to eq ["walk the dog"]
    end
    it "raise error when no task added to .add_task" do
      todo = Todo.new
      expect { todo.add_task("") }.to raise_error "Please enter a task"
    end
    it "raise error when no task added to .delete_task" do
      todo = Todo.new
      expect { todo.delete_task("") }.to raise_error "Please enter a task"
    end
  end
end