# A van is used to move broken bikes from the stations to the garage.

# It can also be used to take fixed bikes back to the station(s).
# The van, all stations and the garage have fixed capacity, so they cannot take more bikes that they can hold.

require 'van'

describe Van do

  it 'should take all broken bikes from a station' do
    van = Van.new
    broken_bike = double :bike
    station = double :station, broken_bikes: [broken_bike]

    expect(station).to receive(:release).with(broken_bike).and_return(broken_bike)

    van.get_broken_bikes_from(station)

    expect(van.bikes).to eq [broken_bike]
  end
  
end