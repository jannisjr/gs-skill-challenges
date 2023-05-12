class Reminder
  def initialize(name)
    fail "Please enter a name" if name == ""
    @name = name
    @task = ""
    @task_list = []
    # ...
  end

  def remind_me_to(task) # task is a string
    fail "Please enter a task" if task == ""
    @task = task
    @task_list << task
  end

  def remind()
    output = @task_list.each do |task| task
    end
    output
  end
end