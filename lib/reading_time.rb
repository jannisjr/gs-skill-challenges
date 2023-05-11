def reading_time(text)
  words = text.split(" ")
  return ((words.length / 200.to_f) * 60).ceil
end