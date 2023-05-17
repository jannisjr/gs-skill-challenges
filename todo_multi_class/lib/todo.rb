class Todo
  def initialize(task) # task is a string
    fail "Please enter a task" if task.empty?
    @todo = [task, ""]
  end

  def task
    @todo[0]
    # Returns the task as a string
  end

  def mark_done!
    @todo[1] = "complete"
    # Marks the todo as done
    # Returns nothing
  end

  def done?
    if @todo.include?("complete")
     p true
    else
     p false
    end
  end
end

todo = Todo.new("walk the dog")
todo.done?