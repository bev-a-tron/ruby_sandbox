class Timing

  def initialize
    puts 'time inside init           : ' << Time.now.to_s
    sleep(4) # seconds
  end

  def set_time_in_sig(time: Time.now)
    new_time = Time.now
    puts 'time from args             : ' << time.to_s
    puts 'time inside method         : ' << new_time.to_s
    # assert_not_equal(0, diff, 'two times are not equal')
  end
end

t = Timing.new
sleep(5)
t.set_time_in_sig
puts 'time after method is called: ' << Time.now.to_s
