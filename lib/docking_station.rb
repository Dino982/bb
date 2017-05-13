require_relative 'bike'

class DockingStation

  def release_bike
    Bike.new
  end

  def dock(bike)
    # we need to return the bike we dock
    bike
  end

  def bike
  end

end
