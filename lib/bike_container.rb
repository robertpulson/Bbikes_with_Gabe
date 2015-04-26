# Define Bike Container Module
module BikeContainer
  DEFAULT_CAPACITY = 10

  attr_writer :capacity

  def initialize(options = {})
    self.capacity = options.fetch(:capacity, capacity)
  end

  def bikes
    @bikes ||= []
  end

  def capacity
    @capacity ||= DEFAULT_CAPACITY
  end

  def bike_count
    bikes.count
  end

  def dock(bike)
    fail 'Station is full' if full?
    bikes << bike
  end

  def release(bike)
    fail "#{bike} is not a bike!" unless bike.class.to_s == 'Bike'
    fail "#{bike} does not exist!" unless bikes.include?(bike)
    bikes.delete(bike)
  end

  def full?
    bike_count == capacity
  end

  def available_bikes
    bikes.reject(&:broken?)
  end

  def broken_bikes
    bikes.select(&:broken?)
  end
end
