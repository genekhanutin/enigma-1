require 'minitest'
require 'minitest/autorun'
require './lib/encryptor'

class EncryptorTest < Minitest::Test

  def setup
    @test_key  = [4,1,5,1,2]
    @test_date = Date.new('020315').last_four_of_squared_date
  end

  def test_encryptor_exists
    assert Encryptor.new
  end

  def test_it_rotates_a_letter_by_rotation_value_a
    encryptor = Encryptor.new()
  end
end