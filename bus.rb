class Bus

  attr_reader :route_number, :final_destination
  def initialize(route_number, final_destination)
    @route_number = route_number
    @final_destination = final_destination
  end

  def drive
    return "brum brum"
  end
end