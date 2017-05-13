require'docking_station'

describe DockingStation do

  it { is_expected.to respond_to :release_bike }

  it{ is_expected.to respond_to(:dock).with(1).argument}


  describe '#release_bike' do
    # use of # before method name implies its an instance method
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      # we want to release the bike we docked
      expect(subject.release_bike).to eq bike
    end
  end

  describe '#release_bike' do
    it 'raises an error when no bikes available' do
      expect {subject.release_bike}.to raise_error 'No bikes available'
    end
  end

  describe '#dock' do
    it 'raises an error when full' do
      20.times {subject.dock Bike.new}
      expect {subject.dock Bike.new}.to raise_error 'Docking station full'
    end
  end

end
