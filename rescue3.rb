def my_func
  puts 'hello'
  raise StandardError.new msg = 'omg things are bad!'
rescue StandardError => err
  puts err
  puts 'allalalalla'
  raise StandardError.new msg = 'BOOM!!!'
rescue => err
  puts err
  puts 'i like llamas'
end

my_func

# 2nd rescue does not rescue from the first one
