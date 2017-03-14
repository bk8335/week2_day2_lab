require('minitest/autorun')
require('minitest/rg')
require_relative('../person')

class TestPerson < MiniTest::Test

  def setup
    @person1 = Person.new("Ben", 27)
  end

  def test_person_name
    assert_equal("Ben", @person1.name)
  end

  def test_person_age
    assert_equal(27, @person1.age)
  end 
end