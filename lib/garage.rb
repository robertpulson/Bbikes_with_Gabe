require_relative 'bike_container'

# Define Garage Class
class Garage
  include BikeContainer

  def fix(bike)
    bike.fix!
  end

  def accept_bikes_from(van)
    van.bikes.each do |bike|
      van.release(bike)
      dock(bike)
      bike.fix!
    end
  end
end
