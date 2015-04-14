require 'minitest'
require 'minitest/autorun'
require './lib/rotator'

class RotatorTest < Minitest::Test

    def test_rotator_exists
      assert Rotator.new
    end

    def test_rotation_a_returns_integer
      rotator = Rotator.new

      assert Fixnum, rotator.rotation_a.is_a?(Fixnum)
    end
end
