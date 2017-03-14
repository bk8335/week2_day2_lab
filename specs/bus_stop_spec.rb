require('minitest/autorun')
require('minitest/rg')
require_relative('../bus_stop')

class TestBusStop < MiniTest::Test

  def setup
    @bus_stop1 = BusStop.new("near nursery")
  end

  def test_busstop_stop
    assert_equal("near nursery", @bus_stop1.name)
  end

  def test_busstop_queue
    assert_equal(0, @bus_stop1.queue.length)
  end

  def test_add_person_to_queue
    @bus_stop1.add_person_to_queue("Johnny")
    assert_equal(1, @bus_stop1.queue.length)
  end
end