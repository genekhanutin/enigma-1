require 'minitest'
require 'minitest/autorun'
require './lib/decryptor'

class DecryptorTest < Minitest::Test
  attr_reader :test_key, :test_date

  def setup
    @test_key  = "41512"
    @test_date = Date.new('020315').last_four_of_squared_date
  end

  def test_decryptor_exists
    assert Decryptor.new('', test_key, test_date)
  end

  def test_it_decrypts_one_letter
    decryptor = Decryptor.new('s', test_key, test_date)

    assert_equal 'h', decryptor.decrypt_message
  end

  def test_it_encrypts_two_letters
    decryptor = Decryptor.new('sv', test_key, test_date)

    assert_equal 'he', decryptor.decrypt_message
  end

  def test_it_decrypts_three_letters
    decryptor = Decryptor.new('svz', test_key, test_date)

    assert_equal 'hel', decryptor.decrypt_message
  end

  def test_it_decrypts_four_letters
    decryptor = Decryptor.new('svz2', test_key, test_date)

    assert_equal 'hell', decryptor.decrypt_message
  end

  def test_it_decrypts_five_letter_word
    decryptor = Decryptor.new('svz2z', test_key, test_date)

    assert_equal 'hello', decryptor.decrypt_message
  end

  def test_it_decrypts_phrase_with_space
    decryptor = Decryptor.new('svz2zo 522r', test_key, test_date)

    assert_equal 'hello world', decryptor.decrypt_message
  end

  def test_it_decrypts_phrase_with_spaces_and_number
    decryptor = Decryptor.new('svz2zo 522ro,', test_key, test_date)

    assert_equal 'hello world 1', decryptor.decrypt_message
  end

  def test_it_decrypts_longer_message
    original_message = "dont tell anyone about this unless you want to attend turing for life"
    encrypted_message = ".uci5z6agd2ctuc65g3dpzzicohzpta6nyznj0zl8tizouz2oz6c.dijmoc85ldg5r 7,"
    key = "68262"
    date = "041515"
    decrypted_message = Decryptor.new(encrypted_message, key, date).decrypt_message
    assert_equal original_message, decrypted_message
  end
end