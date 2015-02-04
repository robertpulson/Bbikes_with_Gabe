require 'docking_station'

describe DockingStation do

  it 'should allow setting default capacity on initialising' do
    station = DockingStation.new(capacity: 20)
    expect(station.capacity).to eq 20
  end

end