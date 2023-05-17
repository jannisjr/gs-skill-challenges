require 'todo_list'

RSpec.describe TodoList do
  context "Adds tasks to list based on whether they are completed or not completed" do
    it "adds a completed task to list then returns the task" do
      todo = Todo.new("walk the dog")
      todolist = TodoList.new
      todo.mark_done!
      todo.done?
      expect(todolist.complete).to equal "walk the dog"
    end
  end
end


