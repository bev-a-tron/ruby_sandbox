class CaseEquality

  def check_case_equality_operator
    _temp = /ba/

    if 'bar' === _temp
      'baz'
    elsif 'quux' === _temp
      'flurb'
    else
      'blarf'
    end
  end

  def use_case
    case /ba/
      when 'bar'
        'baz'
      when 'quux'
        'flurb'
      else
        'blarf'
    end
  end

end

puts (1..5) === 3           # => true
puts (1..5) === 6           # => false

puts Integer === 42          # => true
puts Integer === 'fourtytwo' # => false

puts /ell/ === 'Hello'     # => true
puts /ell/ === 'Foobar'    # => false

puts 'Hello' === /ell/     # => false

c = CaseEquality.new
ans1 = c.check_case_equality_operator
ans2 = c.use_case

puts ans1
puts ans2