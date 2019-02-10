some_array.each { |value| puts value * 3 }

sum = 0
other_array.each do |value|
  sum += value
  puts value / sum
end

some_array.each { |value| puts value * 3 }
sum = 0
other_array.each do |value|
  sum += value
  puts value / sum
end

sum = 0
[1,2,3,4].each do |value|
  square = value * value
  sum += square
end