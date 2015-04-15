require_relative 'rotator'

class Encryptor
  attr_reader :rotator, :message

  #def initialize(message = "", key = Key.new.generate_key, date = Date.new.last_four_of_squared_date)
   def initialize(message = "", key = Key.new.generate_key, date = Date.new.last_four_of_squared_date)
    @rotator  = Rotator.new(key, date)
    @message  = message
  end

  def encrypt_message
    encrypt_value.map do |num|
      rotator.character_map[num]
    end.join
  end

  def encrypt_value
    message.chars.each_slice(4).map do |slice|
      slice.map.with_index do |letter, index|
        value_on_character_map(letter,index)
      end
    end.flatten
  end

  def value_on_character_map(letter, index)
    (rotator.character_map.index(letter) + rotator.rotations[index]) % 39
  end
end