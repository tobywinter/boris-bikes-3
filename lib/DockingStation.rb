require_relative 'Bike'

class DockingStation
attr_reader :bikes_array

def initialize
  @bikes_array = []
end


  def release_bike
    fail 'No bikes available' unless empty?
    @bikes_array.pop
  end

#allows user to dock bike
  def dock(bike)
    fail "Dock is at capacity" if full?
    @bikes_array << bike
  end

  private

  def empty?
    !@bikes_array.empty?
  end

  def full?
    @bikes_array.count >= 20
  end

end
