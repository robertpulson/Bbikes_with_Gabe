# There is a garage that can fix broken bikes.

require 'garage'

describe Garage do

let (:broken_bike) {double :bike, broken?: true}
let (:garage) {Garage.new}

  it 'should be able to fix a broken bike' do
    
    garage.dock(broken_bike)
    expect(broken_bike).to receive(:fix!)         # Don't fully understand order of expect
    garage.fix(broken_bike)
  end

  it 'should allow setting default capacity on initialising' do
    big_garage = Garage.new(capacity: 100)
    expect(big_garage.capacity).to eq 100
  end
  
  it 'should fix the bikes as they arrive' do
    garage.accept(broken_bike)
    expect(broken_bike).to receive(:fix!)
    
    

    # broken bike should be fixed
  end

end