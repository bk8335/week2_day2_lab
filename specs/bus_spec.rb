require('minitest/autorun')
require('minitest/rg')
require_relative('../bus')
require_relative('../person')
require_relative('../bus_stop')



class TestBus < MiniTest::Test

  def setup
    @bus1 = Bus.new(22, "Ocean terminal")
  end

  def test_bus_route
    assert_equal(22, @bus1.route_number)
  end

  def test_bus_destination
    assert_equal("Ocean terminal", @bus1.final_destination)
  end

  def test_bus_drive
    assert_equal("brum brum", @bus1.drive)
  end

  def test_passenger_numbers
    assert_equal(0, @bus1.passengers.length)
  end

  def test_bus_pick_up
    @bus1.add_passenger(@person1)
    assert_equal(1, @bus1.passengers.length)
  end

  def test_bus_drop_off
    @bus1.add_passenger(@person1)
    @bus1.remove_passenger(@person1)
    assert_equal(0, @bus1.passengers.length)
  end

  def test_bus_remove_all
    @bus1.add_passenger(@person1)
    @bus1.add_passenger(@person2)
    @bus1.add_passenger("here is a string")
    puts @bus1.passengers.length
    actual = @bus1.remove_all
    assert_equal(0, @bus1.passengers.length)
  end

  def test_bus_pick_up_stop_all
    @bus1.pick_up_stop_all(@bus_stop1.queue)
  end
end