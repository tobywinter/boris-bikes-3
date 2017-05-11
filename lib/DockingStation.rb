require_relative 'Bike'

class DockingStation
attr_accessor :capacity
attr_reader :bikes_array

DEFAULT_CAPACITY = 20

def initialize(capacity = DEFAULT_CAPACITY)
  @bikes_array = []
  @capacity = capacity
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


  def report_broken(bike)
    answer = ""
    until (answer == "Y" || answer == "N")
      puts "Is the bike working?(Y/N)"
      answer = gets.chomp.upcase
      if answer == "Y"
        bike.working = true
      elsif answer == "N"
        bike.working = false
      else
        "Invalid input"
      end
    end
  end

  private

  def empty?
    !@bikes_array.empty?
  end

  def full?
    @bikes_array.count >= DEFAULT_CAPACITY
  end

end
