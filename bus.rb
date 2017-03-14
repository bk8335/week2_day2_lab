class Bus

  attr_reader :route_number, :final_destination
  attr_accessor :passengers

  def initialize(route_number, final_destination)
    @route_number = route_number
    @final_destination = final_destination
    @passengers = []
  end

  def drive
    return "brum brum"
  end

  def add_passenger(person)
    @passengers.push(person)
  end

  def remove_passenger(person)
    @passengers.delete(person)
  end

  def remove_all
    while @passengers.length > 0
      @passengers.pop
    end
  end

  def pick_up_stop_all
    while @bus_stop1.queue.length > 0
      @bus_stop1.queue.pop
    end
  end
end