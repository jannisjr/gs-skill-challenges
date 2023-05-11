def verify_string(text)
  punctuation_marks = ["!", ".", "?"]
  if text == ""
    "This text has no input"
  elsif text[0] == text[0].capitalize && punctuation_marks.include?(text[-1]) 
    "This is gramatically correct"
  elsif text[0] == text[0].capitalize
    "This text has no punctuation mark at the end" 
  elsif punctuation_marks.include?(text[-1]) 
    "This text has no capital letter at the beginning"
  end
end