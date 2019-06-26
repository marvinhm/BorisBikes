require 'DockingStation'

describe DockingStation do
  it { should respond_to(:release_bike) }
end

describe DockingStation do
  it { should respond_to(:dock)}
end

describe DockingStation do
  it {should respond_to(:bike)}
end

describe DockingStation do
  describe '#bike' do
    it 'raises' do
      station = DockingStation.new
      expect {station.bike}.to raise_error 'No bikes available'
    end
  end
end

# describe DockingStation do
#   describe '#dock' do
#     it 'raises' do
#       station = DockingStation.new
#       bike = Bike.new
#       expect {station.dock(bike)}.to raise_error 'Docking full!'
#     end
#   end
# end

describe DockingStation do
  describe '#dock' do
    it 'raises' do
      station = DockingStation.new
      20.times {station.dock(Bike.new)}
      expect { station.dock(Bike.new)}.to raise_error 'Docking full!'
    end
  end
end

describe DockingStation do
  describe '#release_bike' do
    it 'raises' do
      station = DockingStation.new
      expect { station.release_bike }.to raise_error 'No bikes available'
    end
  end
end
