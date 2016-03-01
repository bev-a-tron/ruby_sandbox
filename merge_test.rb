class MergeTest
  def do
    additional_parameters = { msisdn: '234567890' }
    parameters = {
        from: 'Tigo',
        to: '111111111111',
        text: 'helloooooo',
    }.merge additional_parameters
    puts parameters
  end

  def does_it_overwrite
    additional_parameters = { to: '234567890' }
    parameters = {
        from: 'Tigo',
        to: '111111111111',
        text: 'helloooooo',
    }.merge additional_parameters
    puts parameters
  end

end

m = MergeTest.new
m.do
m.does_it_overwrite
