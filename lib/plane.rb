
require_relative 'airport'

class Plane
  attr_accessor :status # why setter?
  def initialize
    @status = 'flying'
  end

  def takeoff
    @status = 'flying' # is this doing much?
  end

  def land
    @status = 'landed'
  end

end

