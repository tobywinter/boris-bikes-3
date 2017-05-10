require 'DockingStation'

describe DockingStation do

	it { is_expected.to respond_to :release_bike }

	it "gets a bike" do
		@bike = subject.release_bike
		expect(@bike).to be_working
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


end
