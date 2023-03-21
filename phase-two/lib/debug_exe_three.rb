def get_most_common_letter(text)
  counter = Hash.new(0)
  text.chars.each do |char|
    counter[char] += 1
  end
  counter.to_a.sort_by { |k, v| v }[-2][0] 
  # change [0][0] to this and returns "o" as " "
  # is the most common string character
end

# Intended output:
# 
p get_most_common_letter("the roof, the roof, the roof is on fire!")
# => "o"