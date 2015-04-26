require 'van'

describe Van do
  let(:van) { Van.new }

  it 'should take all broken bikes from a station' do
    broken_bike = double :broken_bike
    station = double :station, broken_bikes: [broken_bike]
    expect(station).to receive(:release).with(broken_bike)
    van.get_broken_bikes_from(station)
    expect(van.bikes).to eq [broken_bike]
  end
end
