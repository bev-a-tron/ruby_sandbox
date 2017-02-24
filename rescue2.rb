def my_func
  begin
    puts 'hello'
    raise StandardError.new msg = 'omg things are bad!'
  rescue StandardError => err
    puts err
  end

  puts 'allalalalla'
end

my_func