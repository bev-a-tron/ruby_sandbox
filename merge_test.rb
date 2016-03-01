class MergeTest
  def do(additional_parameters)
    parameters = {
        from: 'Tigo',
        to: '111111111111',
        text: 'helloooooo',
    }.merge additional_parameters
    puts parameters
  end

end

m = MergeTest.new
m.do({ msisdn: '23456789' })
m.do({ to: '2345667899' })  # does it overwrite?
m.do({ })  # additional params is empty
m.do({ to: nil })  # to is nil
