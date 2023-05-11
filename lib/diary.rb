def make_snippet(string)
  array = string.split(" ")
  if array.length > 5
    five = array[0..4].join(" ")
    return "#{five}..."
  else
    return string
  end
end

def count_words(string)
  string.split(" ").length
end