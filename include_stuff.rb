module MyModule
  def method_1
    puts 'Inside the module!'
  end
end

class IncludeStuff
  include MyModule
  def method_1
    puts 'Inside include stuff!'
  end
end

x = IncludeStuff.new
x.method_1  # Inside include stuff!

#########################################################


class BaseClass
  def method_1
    puts 'Inside the base class!'
  end
end


class NewStuff < BaseClass
  include MyModule
end

x = NewStuff.new
x.method_1  # Inside the module!


#########################################################


class NewNewStuff < BaseClass
  include MyModule

  def method_1
    puts 'inside the new new stuff class!'
  end
end

x = NewNewStuff.new
x.method_1  # Inside the new new stuff class!
