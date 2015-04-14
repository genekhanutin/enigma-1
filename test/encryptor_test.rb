require 'minitest'
require 'minitest/autorun'
require './lib/encryptor'

class EncryptorTest < Minitest::Test
  attr_reader :rotator

  def setup
    test_key  = [4,1,5,1,2]
    test_date = Date.new('020315').last_four_of_squared_date
    @rotator = Rotator.new(test_key, test_date)
  end

  def test_encryptor_exists
    assert Encryptor.new
  end

  def test_it_encrypts_one_letter
    encryptor = Encryptor.new(rotator, 'h')

    assert_equal 's', encryptor.encrypt_message
  end

  def test_it_encrypts_two_letters
    encryptor = Encryptor.new(rotator, 'he')

    assert_equal 'sv', encryptor.encrypt_message
  end

  def test_it_encrypts_three_letters
    encryptor = Encryptor.new(rotator, 'hel')

    assert_equal 'svz', encryptor.encrypt_message
  end

  def test_it_encrypts_four_letters
    encryptor = Encryptor.new(rotator, 'hell')

    assert_equal 'svz2', encryptor.encrypt_message
  end

  def test_it_encrypts_five_letter_word
    encryptor = Encryptor.new(rotator, 'hello')

    assert_equal 'svz2z', encryptor.encrypt_message
  end

  def test_it_encrypts_phrase_with_space
    encryptor = Encryptor.new(rotator, 'hello world')

    assert_equal 'svz2zo 522r', encryptor.encrypt_message
  end

  def test_it_encrypts_phrase_with_spaces_and_number
    encryptor = Encryptor.new(rotator, 'hello world 1')

    assert_equal 'svz2zo 522ro,', encryptor.encrypt_message
  end
end