require_relative 'Bike'

class DockingStation

attr_reader :bike

  def release_bike
    @bike = Bike.new # ? bike_available? == true : "No Bikes available"

  end

  def dock(bike)
    @bike = bike
  end

  def bike_available?
    true
  end

end 
