require('minitest/autorun')
require('minitest/rg')
require_relative('../bus')

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

end