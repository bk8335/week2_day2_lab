class BusStop

  attr_accessor :name, :queue

  def initialize(name)
    @name = name
    @queue = []
  end

  def add_person_to_queue(name)
    @queue.push(name)
  end



end