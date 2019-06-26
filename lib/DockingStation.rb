class DockingStation
  def initialize
    @the_dock = []
  end

  def release_bike
    fail 'No bikes available' unless @bike
  end

  def dock(bike)
    if @the_dock.count < 20
      @the_dock << bike
    else
      raise 'Docking full!'
    end
  end

  def bike
    raise 'No bikes available' unless @bike
    @bike
  end
end

class Bike
  def working?

  end
end
