class Diary
  def initialize
    @entries = []
    @todo_list = []
  end

  def add(entry)
    @entries << entry
  end

  def print_entries
    @entries.each do |entry|
      entry.task   
    end
  end

  def add_todo(todo)
    @todo_list << todo
  end

  def delete_todo(task)
    fail "Please enter a task" if task == ""
    if @todo_list.include?(task)
      @todo_list.delete(task)
    end
  end

  def print_todo
    @todo_list
  end

  def count_words
    total = 0
    @entries.each do |entry|
      total += entry.count_words
    end
    return total
  end

  def readable_entries(wpm, minutes)
    readable_entries = @entries.filter do |entry|
      entry.reading_time(wpm) <= minutes
    end

    return readable_entries.max_by { |entry| entry.count_words } if readable_entries.any?
  end
end

