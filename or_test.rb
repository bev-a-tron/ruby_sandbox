class OrAndStuff
  def does_or_work
    a = true
    b = false
    unless a or b
      puts 'hiiii!'
    end

    unless (a or b)
      puts 'this one is good'
    end
  end
end

t = OrAndStuff.new
t.does_or_work()

def true_or_false
  s = ( false or true )
  puts s
end

true_or_false()