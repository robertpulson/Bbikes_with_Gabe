# A van is used to move broken bikes from the stations to the garage.

# It can also be used to take fixed bikes back to the station(s).
# The van, all stations and the garage have fixed capacity, so they cannot take more bikes that they can hold.



require 'van'

describe Van do

  it 'should take all broken bikes from a station' do
    van = Van.new
    station = double :station, dock: nil, available_bikes: nil
    bike = double :bike, broken: false
    broken_bike = double :bike, broken: true

    # expect(station).to receive(:dock)

    2.times {station.dock(bike)}
    2.times {station.dock(broken_bike)}
    van.get_broken_bikes(station)
    expect(van.bikes).to be_eq [broken_bike, broken_bike]
  end
  
end