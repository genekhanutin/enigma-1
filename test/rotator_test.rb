require 'minitest'
require 'minitest/autorun'
require './lib/rotator'

class RotatorTest < Minitest::Test

  def test_rotator_exists
    assert Rotator.new
  end

  def test_rotation_a_returns_total_rotation_value_for_a
    test_key  = "41512"
    test_date = Date.new('020315').last_four_of_squared_date
    rotator   = Rotator.new(test_key, test_date)

    assert_equal 50, rotator.rotation_a
  end  

  def test_rotation_b_returns_total_rotation_value_for_b
    test_key  = "41512"
    test_date = Date.new('020315').last_four_of_squared_date
    rotator   = Rotator.new(test_key, test_date)

    assert_equal 17, rotator.rotation_b
  end  

  def test_rotation_c_returns_total_rotation_value_for_c
    test_key  = "41512"
    test_date = Date.new('020315').last_four_of_squared_date
    rotator   = Rotator.new(test_key, test_date)

    assert_equal 53, rotator.rotation_c
  end

  def test_rotation_c_returns_total_rotation_value_for_d
    test_key  = "41512"
    test_date = Date.new('020315').last_four_of_squared_date
    rotator   = Rotator.new(test_key, test_date)

    assert_equal 17, rotator.rotation_d
  end

  def test_rotations_returns_array_of_rotation_values
    test_key  = "41512"
    test_date = Date.new('020315').last_four_of_squared_date
    rotator   = Rotator.new(test_key, test_date)

    assert_equal [50, 17, 53, 17], rotator.rotations
  end
end