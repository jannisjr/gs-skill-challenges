def verify_string(text)
  split_string = text.split(" ")
  punctuation = split_string.last[-1]
  first_word = split_string[0]
  if first_word == first_word.capitalize
    puts " This is gramatically correct"
  end
end

verify_string("Have you ever seen the rain?")