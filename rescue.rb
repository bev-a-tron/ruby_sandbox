

raise_error = true

p = begin
  puts 'hello this is thing!'
  if raise_error
    raise StandardError 'omg things are bad!'
  else
    'lllamaassss!'
  end
rescue => e
  puts 'this is a rescue block!'
  'fluffy puppies!'
end

puts 'p is this: ' << p

