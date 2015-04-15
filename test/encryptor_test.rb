require 'minitest'
require 'minitest/autorun'
require './lib/encryptor'

class EncryptorTest < Minitest::Test
  attr_reader :test_key, :test_date

  def setup
    @test_key  = "41512"
    @test_date = Date.new('020315').last_four_of_squared_date
  end

  def test_encryptor_exists
    assert Encryptor.new('', test_key, test_date)
  end

  def test_it_encrypts_one_letter
    encryptor = Encryptor.new('h', test_key, test_date)

    assert_equal 's', encryptor.encrypt_message
  end

  def test_it_encrypts_two_letters
    encryptor = Encryptor.new('he', test_key, test_date)

    assert_equal 'sv', encryptor.encrypt_message
  end

  def test_it_encrypts_three_letters
    encryptor = Encryptor.new('hel', test_key, test_date)

    assert_equal 'svz', encryptor.encrypt_message
  end

  def test_it_encrypts_four_letters
    encryptor = Encryptor.new('hell', test_key, test_date)

    assert_equal 'svz2', encryptor.encrypt_message
  end

  def test_it_encrypts_five_letter_word
    encryptor = Encryptor.new('hello', test_key, test_date)

    assert_equal 'svz2z', encryptor.encrypt_message
  end

  def test_it_encrypts_phrase_with_space
    encryptor = Encryptor.new('hello world', test_key, test_date)

    assert_equal 'svz2zo 522r', encryptor.encrypt_message
  end

  def test_it_encrypts_phrase_with_spaces_and_number
    encryptor = Encryptor.new('hello world 1', test_key, test_date)

    assert_equal 'svz2zo 522ro,', encryptor.encrypt_message
  end
end