class Arguments

  def simple(a)
    puts a
  end

  def one_kwarg(a, b: 'hello')
    puts b
    puts b.class
  end

  def two_kwargs(a, b: 'hello', c: 'goodbye')
    puts b
    puts c
  end

  def needs_kwarg(a:)
    puts a
  end

end

a = Arguments.new
a.one_kwarg('hi')
a.one_kwarg('hi', b: 'heyo')
a.two_kwargs('hi', c: 'Mr. Snuggles')
a.two_kwargs('hi', b: 'Mrs. Tiddlywinks')
a.two_kwargs('hi', b: 'yo', c: 'wassup?')
a.needs_kwarg(a: 'hi')
