class GrammarStats
  def initialize
    @counter = 0
    @pass = 0
    # ...
  end
  
  def check(text)
    punctuation_marks = ["!", ".", "?"]
    if text == ""
      return false
    elsif text[0] == text[0].capitalize && punctuation_marks.include?(text[-1])
      @pass += 1
      @counter += 1
      return true
    else
      @counter += 1
      return false
    end
    # text is a string
    # Returns true or false depending on whether the text begins with a capital
    # letter and ends with a sentence-ending punctuation mark.
  end

  def percentage_good
    @pass * 100 / @counter
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
  end
end

grammarstats = GrammarStats.new
grammarstats.check("Have you ever seen the rain?")
grammarstats.check("have you ever seen the rain?")
grammarstats.percentage_good