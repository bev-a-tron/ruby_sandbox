class MapsAndThings
  def maps
    a = %w( dog cat cow chicken )
    b = a.map { |x| x * 2 }
    puts a # a doesn't change
    puts b # b is the new array
  end

  def shift
    a = %w( apple orange banana pineapple )
    b = a.shift(3)
    # puts a
    puts b
  end
end

m = MapsAndThings.new
m.maps
m.shift
