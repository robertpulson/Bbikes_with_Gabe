require_relative 'bike_container'

class Van

  include BikeContainer

  def get_broken_bikes_from(station)
    station.broken_bikes.each do |broken_bike|
      self.dock(station.release(broken_bike))
    end
  end
end