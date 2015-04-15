require_relative 'rotator'

class Decryptor
  attr_reader :rotator, :message

  def initialize(message = "", key, date)
    @rotator  = Rotator.new(key, date)
    @message  = message
  end

  def decrypt_message
    decrypt_value.map do |num|
      rotator.character_map[num]
    end.join
  end

  def decrypt_value
    message.chars.each_slice(4).map do |slice|
      slice.map.with_index do |letter, index|
        value_on_character_map(letter,index)
      end
    end.flatten
  end

  def value_on_character_map(letter, index)
    (rotator.character_map.index(letter) - rotator.rotations[index]) % 39
  end
end
# instantiate new instance of rotator class
# use its rotation methods and character map to do encryption

# find index position of message-character on character-map (.index())
# .index will return index position of letter from the message on character map
# add rotation vlaue to that index position
# find new value at that position


# message will be passed into encryptor
# then encryptor will be passed/instantiated in encrypt
