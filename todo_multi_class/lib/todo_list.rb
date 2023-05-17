class TodoList
  def initialize
    @todos = []
  end

  def add(todo) # todo is an instance of Todo
    @todos << todo
  end

  def incomplete
    incomplete = @todos.filter { |todo|
      todo.done? == false }
    incomplete.map! { |todo|
      todo.task }
    return incomplete
    
    # Returns all non-done todos
  end

  def complete
    complete = @todos.filter { |todo|
      todo.done? == true }
    complete.map! { |todo|
      todo.task }
    return complete
  end

  def give_up!
  @todos.each { |task|
    task.mark_done! }
    # Marks all todos as complete
  end
end
