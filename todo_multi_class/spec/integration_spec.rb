require 'todo_list'
require 'todo'

RSpec.describe 'integration' do
  context "after adding a task" do
    it "returns all incomplete tasks" do
      todo = Todo.new("walk the dog")
      todolist = TodoList.new
      todo.task
      todo.done?
      todolist.add(todo)
      expect(todolist.incomplete).to eq ["walk the dog"]
    end
    it "returns all incomplete task + 2" do
      todo = Todo.new("walk the dog")
      todo2 = Todo.new("walk the cat")
      todolist = TodoList.new
      todo.task
      todo.done?
      todo2.task
      todo2.done?
      todolist.add(todo)
      todolist.add(todo2)
      expect(todolist.incomplete).to eq ["walk the dog", "walk the cat"]
    end
    it "returns all complete tasks" do
      todo = Todo.new("walk the dog")
      todolist = TodoList.new
      todo.task
      todo.mark_done!
      todo.done?
      todolist.add(todo)
      expect(todolist.complete).to eq ["walk the dog"]
    end
    it "returns all incomplete task + 2" do
      todo = Todo.new("walk the dog")
      todo2 = Todo.new("walk the cat")
      todolist = TodoList.new
      todolist.add(todo)
      todolist.add(todo2)
      todolist.give_up!
      expect(todolist.complete).to eq ["walk the dog", "walk the cat"]
    end
  end
end



    