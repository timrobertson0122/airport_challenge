require_relative 'plane'

class Airport
attr_reader :hangar

  def initialize
    @hangar = []
    @weather = 'sunny' # initialize each new airport with a instance variable called weather, set to 'sunny' as default
  end

  def hangar_count
    hangar.count
    endgit

  def launch plane
    # fail 'Cannot takeoff if stormy' if weather == 'stormy'
    hangar.delete(plane) # reference the method hangar not the instance variable

    # delete removes that particular plane, pop simply removes the last entry in the array

    plane.takeoff # same method name for plane and airport?!
  end

  def lands plane
    @weather = weather # never used?!
    if @weather == 'stormy'
      fail 'Cannot land in a storm'
    elsif hangar.count >= 6 # reference the method hangar not the instance variable
      # remove the magic number
      fail 'Airport full'

      # if weather = stormy?
      # if airport = full?

    else
    hangar << plane # reference the method hangar not the instance variable
    plane.land # same method name for plane and airport?! Easier on me to rename them
    end
  end

  def weather
    if rand(2)==1
      'stormy'
    else 'sunny'
    end
  end

end
