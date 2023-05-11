def verify_string(text)
  punctuation_marks = ["!", ".", "?"]
  first_letter = text[0] 
  punctuation = text[-1]
  if text == ""
    "This text has no input"
  elsif first_letter == first_letter.capitalize && punctuation_marks.include?(punctuation) 
    "This is gramatically correct"
  elsif first_letter == first_letter.capitalize
    "This text has no punctuation mark at the end" 
  elsif punctuation_marks.include?(punctuation)
    "This text has no capital letter at the beginning"
  end
end


