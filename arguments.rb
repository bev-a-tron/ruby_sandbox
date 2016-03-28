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

  def splat(*)
    puts 'did this work?'
  end

  def stuff_and_splat(a, *)
    puts a
  end

  # def kwarg_and_splat(a: 'hello', *)
  #   puts a
  # end

  # def kwarg_and_args(a: 'hello', *args)
  #   puts a
  #   puts args[:test]
  # end

  def kwargs_only(*kwargs)
    puts kwargs
  end

end

a = Arguments.new
# a.one_kwarg('hi')
# a.one_kwarg('hi', b: 'heyo')
# a.two_kwargs('hi', c: 'Mr. Snuggles')
# a.two_kwargs('hi', b: 'Mrs. Tiddlywinks')
# a.two_kwargs('hi', b: 'yo', c: 'wassup?')
# a.needs_kwarg(a: 'hi')

a.splat 'hello', 1, 2, 4, 'lalalla', 1.002
a.stuff_and_splat 'hello'
# a.kwarg_and_splat a: 'blah blah blah'  # this doesn't work!!
# a.kwarg_and_args a: 'lalalallala', test: 'hello'
a.kwargs_only a: 'hellow', b: 'test test'