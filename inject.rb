a = (5..10).inject { |sum, n| sum + n }
# b = (5..10).each_with_object({}) { |sum, n| sum + n }
puts a
# puts b
puts (5 + 6 + 7 + 8 + 9 + 10)

evens = (1..10).each_with_object([]) { |i, a| a << i*2 }
puts evens

evens1 = (1..10).each_with_object([])
puts evens1

evens1.each do |e|
  puts e
end

evens2 = (1..10).each_with_object(['hello','howdy','lol']) { |i, a| a << i*2 }
puts 'test test'
puts evens2
puts 'end here'

evens2.each do |e|
  puts e
end

evens3 = (1..3).each
puts evens3

evens3.each do |e|
  puts e
end