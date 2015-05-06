# Unit tests (planes):

# - New plane can be created
# - Plane is created with status 'flying'
# - Plane status changes to 'landed' when landed
# - Plane can land/take-off from airport
# - Plane cannot land when airport is full
# - Plane cannot land/take-off unless weather is 'sunny'
# - Responds to land request, unless landed
# - Responds to take-off, unless flying

require 'plane'

describe Plane do

  context 'taking off and landing' do

    it 'should have a default status of flying' do
      subject.status
      expect(subject.status).to eq 'flying'
    end

    it 'status should change to "flying"' do
      subject.takeoff
      expect(subject.status).to eq 'flying'
    end


    it 'status should change to "landed"' do
      subject.land
      expect(subject.status).to eq 'landed'
    end
  end
end

