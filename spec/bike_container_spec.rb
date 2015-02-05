require "bike_container"

class ContainerHolder; include BikeContainer; end

describe BikeContainer  do 

  let(:bike)          { double :bike,         broken?: false, class: "Bike"   }
  let(:broken_bike)   { double :broken_bike, :broken? => true  }
  let(:holder)        { ContainerHolder.new }

  it "should accept a bike" do
    expect(holder.bike_count).to eq 0
    holder.dock(bike)
    expect(holder.bike_count).to eq 1
  end

  it 'should release a bike' do
    holder.dock(bike)
    holder.release(bike)
    expect(holder.bike_count).to eq 0
  end

  it "should know when its full" do
    10.times {holder.dock(bike)}
    expect(holder).to be_full
  end

  it "should not accept a bike when its full" do
    10.times {holder.dock(bike)}
    expect{holder.dock(bike)}.to raise_error("Station is full")
  end

  it "should provide a list of available bikes" do
    holder.dock(bike)
    holder.dock(broken_bike)
    expect(holder.available_bikes).to eq [bike]
  end

  it "should provide a list of broken bikes" do
    holder.dock(bike)
    holder.dock(broken_bike)
    expect(holder.broken_bikes).to eq [broken_bike]
  end

  it "should return an error if attempting to release a bike it does not contain" do 
    expect { holder.release(bike) }.to raise_error ("#{bike} does not exist!")
  end

  it "should return an error if attempting to release something that isnt a bike" do
    not_a_bike = 1
    expect { holder.release(not_a_bike) }.to raise_error ("#{not_a_bike} is not a bike!")
  end 
end