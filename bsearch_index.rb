# http://fantom1x.blog130.fc2.com/blog-entry-223.html?sp
p arr = [1, 1, 3, 3, 3, 4, 5, 5, 6, 6, 6, 6, 7, 8, 8];

puts 'v = 2'
puts "lower_bound: #{arr.bsearch_index { |x| x >= 2 }}"
puts "upper_bound: #{arr.bsearch_index { |x| x > 2 }}"

puts 'v = 3'
puts "lower_bound: #{arr.bsearch_index { |x| x >= 3 }}"
puts "upper_bound: #{arr.bsearch_index { |x| x > 3 }}"

puts 'v = 9'
puts "lower_bound: #{arr.bsearch_index { |x| x >= 9 }}"
puts "upper_bound: #{arr.bsearch_index { |x| x > 9 }}"
