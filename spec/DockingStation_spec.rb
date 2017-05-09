require './lib/DockingStation'

describe DockingStation do


	docking_station = DockingStation.new
require 'pry';binding.pry
	it 'respond to release bike' do
		docking_station = DockingStation.new
		 expect(docking_station).to respond_to(release_bike)
	 end

end
