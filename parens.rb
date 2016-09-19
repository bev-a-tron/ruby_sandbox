class Parens
  def check_parens
    if prepaid_app?
      prepaid_account? ? 'prepaid app true' : (fail Exception)
    elsif postpaid_app?
      postpaid_account? ? 'postpaid app false' : (fail Exception)
    elsif remit_app?
      remit_account?
    end
  end

  def prepaid_app?
    true
  end

  def prepaid_account?
    true
  end

  def postpaid_app?
    false
  end

  def postpaid_account?
    true
  end

  def remit_app?
    false
  end

  def remit_account?
    false
  end

end

p = Parens.new
test = p.check_parens()
puts test