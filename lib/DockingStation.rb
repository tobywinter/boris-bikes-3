require_relative 'Bike'

class DockingStation
attr_reader :bikes_array

def initialize
  @bikes_array = []
end


  def release_bike
    fail 'No bikes available' unless bikes_available?
    @bikes_array.pop
  end

#allows user to dock bike
  def dock(bike)
    fail "Dock is at capacity" if at_capacity?
    @bikes_array << bike
  end

  def bikes_available?
    !@bikes_array.empty?
  end

  def at_capacity?
    @bikes_array.count >= 20
  end

end
