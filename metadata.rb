require 'rspec'

describe 'Testing stuff' do
  describe 'something' do
    it 'does something' do
      puts example.metadata
    end
  end

  describe 'something', a: 'A' do
    it 'does something', b: 'B' do
      puts example.metadata[:a]
      puts example.metadata[:b]
    end
  end
end