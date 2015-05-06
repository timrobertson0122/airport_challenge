# Unit tests (airports):

# - Can prevent a plane from take-off if weather not 'sunny'
# - Can prevent a plane from land if weather not 'sunny'
# - Can provide 'sunny' or 'stormy' weather update
# - Knows if a plane is in air
# - or at airport

require 'airport'

describe Airport do

  context 'taking off and landing' do

    it { is_expected.to respond_to :lands }
    it { is_expected.to respond_to :launch }

    it 'has one plane after landing' do
      plane = double :plane
      allow(plane).to receive(:land) { 'landed' }
      allow(subject).to receive(:weather) { 'sunny' }
      subject.lands plane
      expect(subject.hangar_count).to eq 1
    end
  end
  # it 'allows a plane to take-off' do
  #   plane = double :plane
  #   allow(plane).to receive(:takeoff) { 'flying' }
  #   airport = Airport.new
  #   airport.takeoff plane
  # end

  context 'traffic control' do

    it 'raises an error when full' do
      allow(subject).to receive(:weather) { 'sunny' }
      6.times { subject.lands Plane.new }
      expect { subject.lands Plane.new }.to raise_error 'Airport full'
    end
  end

  context 'weather conditions' do
    # it 'a plane cannot take off when there is a storm brewing' do
    #   airport = Airport.new

    #   subject.takeoff plane
    #   allow(airport).to receive(:weather) { 'stormy' }
    # end

    it 'a plane cannot land when weather is stormy' do
      plane = Plane.new
      allow(subject).to receive(:weather) { 'stormy' }
      expect { subject.lands plane}.to raise_error 'Cannot land in a storm'
    end
  end
end
