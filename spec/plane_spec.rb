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

  it { is_expected.to respond_to :status }

  xit 'has a flying status when in the air'

  it { is_expected.to respond_to :takeoff }

  it { is_expected.to respond_to :land }

  xit 'changes its status to flying after taking off'

end