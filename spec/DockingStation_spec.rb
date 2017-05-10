require 'DockingStation'

describe DockingStation do

	it { is_expected.to respond_to :release_bike }
describe '#release_bike' do
	it "releases a bike" do
		#@bike = Bike.new
		expect(subject.release_bike).to eq @bike
	end
end

	it "Docks a bike" do
		bike = Bike.new
		expect(subject.dock(bike)).to eq bike
	end

	it "has a bike" do
		expect(subject).to respond_to :bike
	end

	it "bike is a bike" do
		expect(subject.bike).to eq @bike
	end

	it "responds to bike_available?" do
		expect(subject).to respond_to :bike_available?
	end
 
#	it "bike available returns true" do
#		expect(subject.bike_available?).to eq true
#	end

	#it "expect an error in bike available" do
		#expect { subject.bike_available? }.to raise_error(RuntimeError)
	#end

end
