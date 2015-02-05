require 'van'

describe Van do

  let(:van) {Van.new}

  it 'should take all broken bikes from a station' do
    # I want a van to collect a broken bike from a station (the station has no other bikes)

    broken_bike = double :broken_bike
    station = double :station, broken_bikes: [broken_bike]

    # The van will have that bike and the station won't
    expect(station).to receive(:release).with(broken_bike)#.and_return(broken_bike)
    
    van.get_broken_bikes_from(station)

    expect(van.bikes).to eq [broken_bike]
    




  end  

end