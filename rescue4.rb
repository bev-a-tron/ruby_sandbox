def my_func
  second_func
  puts 'allalalalla'
end

def second_func
  puts 'hello'
  raise StandardError.new msg = 'omg things are bad!'
rescue StandardError => err
  puts err
end

my_func

# still evaluates the end of the first func after rescue
