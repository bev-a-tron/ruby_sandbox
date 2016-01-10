class Truthy
  def method_1
    true
  end

  def method_2
    false
  end
end

t = Truthy.new
puts t.method_1
puts t.method_2

puts (t.method_2 || t.method_1)
