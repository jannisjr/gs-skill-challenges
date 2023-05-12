class Reminder
  def initialize
    @task_list = []
    # ...
  end

  def remind_me_to(task)
    fail "Please enter a task" if task == ""
    @task_list << task
  end

  def remove_task(task)
    if @task_list.include?(task)
      @task_list.delete(task)
    end
  end

  def remind()
    output = @task_list.each do |task| task
    end
    output
  end
end