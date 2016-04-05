class ElseNil

  def check_else_nil
    ans = if false
            'hello'
          else
            nil
          end
    puts ans.class

    ans2 = if false
             'hello'
           end
    puts ans2.class
  end

end

e = ElseNil.new
e.check_else_nil
