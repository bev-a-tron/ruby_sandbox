module BaseModule
end

module AnotherBase
end

module DoesThings
  include BaseModule
end


class Test1
  include DoesThings
end

class Test2
  include AnotherBase
  include DoesThings
end

class Test3
  include DoesThings
  include AnotherBase
end

puts Test1.ancestors

puts '-------------------------'

puts Test2.ancestors

puts '-------------------------'

puts Test3.ancestors
