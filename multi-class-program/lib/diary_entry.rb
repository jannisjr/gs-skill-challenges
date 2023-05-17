class DiaryEntry
  attr_accessor :date, :task
  def initialize(date, task)
    @task = task
    @date = date
  end

  def task
    @task
    # Returns a list of entry objects
  end


  def date
    @date
    # Returns a list of entry objects
  end

  def reading_time(wpm)
    fail "WPM must be above zero" unless wpm.positive?
    (count_words / wpm.to_f).ceil
  end

  def count_words
    @task.split(" ").count
  end
end