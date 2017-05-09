require './lib/DockingStation'

describe DockingStation do


	docking_station = DockingStation.new
require 'pry';binding.pry
	docking_staton = DockingStation.new
	it { is_expected.to respond_to(:release_bike)}
	#it {is_expected.to respond_to(:working?)}

end
