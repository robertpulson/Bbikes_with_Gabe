require 'garage'

describe Garage do
  let(:broken_bike) { double :bike, broken?: true, fix!: false }
  let(:van)         { double :van, bikes: [broken_bike] }
  let(:garage)      { Garage.new }

  it 'should be able to fix a broken bike' do
    garage.dock(broken_bike)
    expect(broken_bike).to receive(:fix!)
    garage.fix(broken_bike)
  end

  it 'should allow setting default capacity on initialising' do
    big_garage = Garage.new(capacity: 100)
    expect(big_garage.capacity).to eq 100
  end

  it 'should fix the bikes as they arrive' do
    expect(van).to receive(:release).with(broken_bike)
    expect(broken_bike).to receive(:fix!)
    garage.accept_bikes_from(van)
    expect(garage.bikes).to eq [broken_bike]
  end
end
