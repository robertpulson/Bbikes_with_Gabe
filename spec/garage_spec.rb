# There is a garage that can fix broken bikes.

require 'garage'

describe Garage do

  it 'should be able to fix a broken bike' do
    garage = Garage.new
    broken_bike = double :bike, broken?: true
    garage.dock(broken_bike)
    expect(broken_bike).to receive(:fix!)         # Don't fully understand order of expect
    garage.fix(broken_bike)
  end

  it 'should allow setting default capacity on initialising' do
    garage = Garage.new(capacity: 100)
    expect(garage.capacity).to eq 100
  end
  
end