class DockingStation
  def initialize
    @the_dock = []
  end

  def release_bike
    if @the_dock.count == 0
      fail 'No bikes available' unless @bike
    else
      @the_dock.pop
    end
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
