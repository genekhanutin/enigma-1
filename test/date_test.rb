require 'minitest'
require 'minitest/autorun'
require './lib/date'

class DateTest < Minitest::Test

  def test_assert_date_exists
    assert Date.new
  end

  def test_it_returns_a_date_in_ddmmyy_format_as_integer
    offset = Date.new('041315')

    assert_equal 41315, offset.date
  end

  def test_it_returns_the_date_squared_as_an_integer
    offset = Date.new('041315')

    assert_equal 1706929225, offset.square_date
  end

  def test_it_returns_the_last_four_integers_of_date_squared_as_string
    offset = Date.new('041315')

    assert_equal '9225', offset.last_four_numbers_of_squared_date
  end
end