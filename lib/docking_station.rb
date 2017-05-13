require_relative 'bike'

class DockingStation

  attr_reader :bike

  def release_bike
    Bike.new
  end

  def dock(bike)
    # we need to return the bike we dock
    @bike = bike
  end


end
