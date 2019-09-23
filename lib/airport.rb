require_relative 'plane'


class Airport
  attr_reader :plane_hangar

  def initialize
    @plane_hangar = []
  end

  def land_plane(plane)
     
    plane.on_ground
    plane_hangar << plane
  end

  def take_off
    plane_hangar.each{|plane|
      plane.in_air
      return plane_hangar.shift
    }
  end
end
