def get_most_common_letter(text)
  counter = Hash.new(0)
  text.chars.each do |char|
    counter[char] += 1
  end
  counter.delete(" ")
  counter = counter.to_a.sort_by { |k, v| v }
  counter[-1].each { |k,v| puts k }
end

# Intended output:
# 
get_most_common_letter("the roof, the roof, the roof is on fire!")
# => "o"
