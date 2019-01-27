require_relative 'words_from_string'
require_relative 'count_frequency'

raw_text = %{ saying that the National Assembly and its President Juan Guaidó are best placed to lead Venezuela to the restoration of its democracy, its economy and its freedom," said UK Minister of State Alan Duncan.
In a statement, the Bank of England said Saturday that it provides gold custody services to a large number of customers, but it does not comment on those relationships.
"In all its operations, the Bank observes the highest standards of risk management and abides by all relevant legislation, including applicable financial sanctions," the statement said.
The US Treasury Department said in a statement Friday it plans to use economic and diplomatic tools to ensure any commercial transactions with the Venezuelan government are "consistent" with the US-recognized government of Venezuela led by Juan Guaidó.}


word_list = words_from_string(raw_text)
counts = count_frequency(word_list)
sorted = counts.sort_by { |word, count | count }
top_five = sorted.last(5)
puts top_five

for i in 0...5
  puts top_five.class
  word = top_five[i][0]
  count = top_five[i][1]
  puts "#{word}: #{count}"
end














