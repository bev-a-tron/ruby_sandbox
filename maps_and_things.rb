class MapsAndThings
  def maps
    a = %w( dog cat cow chicken )
    b = a.map { |x| x * 2 }
    puts a # a doesn't change
    puts b # b is the new array
  end
end

m = MapsAndThings.new
m.maps