require 'DockingStation'

describe DockingStation do

	it { is_expected.to respond_to :release_bike }
describe '#release_bike' do
	it "releases a bike" do
		bike = Bike.new
		subject.dock(bike)
		expect(subject.release_bike).to eq bike
	end
end

	it "Docks a bike" do
		bike = Bike.new
		expect(subject.dock(bike)).to eq subject.bikes_array
	end

	it "has a bike" do
		expect(subject).to respond_to :bikes_array
	end

	it "bike is a bike" do
		bike = Bike.new
		subject.dock(bike)
		expect(subject.release_bike.class).to eq bike.class
	end

	it "responds to bike_available?" do
		expect(subject).to respond_to :bikes_available?
	end

#	it "bike available returns true" do
#		expect(subject.bike_available?).to eq true
#	end

	it "raises error if bike unavailable" do
		expect { subject.release_bike }.to raise_error('No bikes available')
	end

	it "Responds to at_capacity?" do
		expect(subject).to respond_to :at_capacity?
	end

#	it 'at_capacity returns false' do
#		expect(subject.at_capacity?).to eq false
#	end

	describe '#dock' do
		it "Raises error if dock is at capacity" do
			20.times { subject.dock Bike.new }
			expect{subject.dock(Bike.new)}.to raise_error("Dock is at capacity")
		end
	end


end
