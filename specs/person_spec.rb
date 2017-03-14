require('minitest/autorun')
require('minitest/rg')
require_relative('../person')

class TestPerson < MiniTest::Test

  def setup
    @person1 = Person.new("Ben", 27)
  end

  

end