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
    require 'pry';binding.pry
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

  def test_it_decrypts_longer_message
    original_message = "dont tell anyone about this unless you want to attend turing for life"
    encrypted_message = ".uci5z6agd2ctuc65g3dpzzicohzpta6nyznj0zl8tizouz2oz6c.dijmoc85ldg5r 7,"
    key = "68262"
    date = "041515"
    encryptor_message = Encryptor.new(original_message, key, date).encrypt_message
    assert_equal encrypted_message, encryptor_message
  end

end