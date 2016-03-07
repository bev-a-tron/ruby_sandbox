class LinebreakTest
  def linebreaks
    a = %w(cat dog bird elephant llama giraffe turtle panda bear
      snake)
    print a
  end

  def concat
    a = %w(cat dog bird)
    b = %w(elephant llama giraffe)
    c = a + b
    print c
  end
end

l = LinebreakTest.new
l.linebreaks
l.concat
