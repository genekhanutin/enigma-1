require 'minitest'
require 'minitest/autorun'
require './lib/key'

class KeyTest < Minitest::Test

  def test_key_exists
    assert Key.new('11111')
  end

  def test_it_generates_random_five_digit_key
    test_key = Key.new

    assert 5, test_key.generate_key.length
  end
end