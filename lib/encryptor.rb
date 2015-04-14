require_relative 'rotator'

class Encryptor
  attr_reader :rotator, :message

  def initialize(rotator = Rotator.new, message = "")
    @rotator = rotator
    @message  = message
  end

  def encrypt_message
    # rotation_tracker = -4
    # message.chars.map do |char|
    #   rotator.character_map.index(char) + rotator.rotations[rotation_tracker]
    #   rotation_tracker -= 1
    # end
    encrypt_value = rotator.character_map.index(message) + rotator.rotation_a
    rotator.character_map[encrypt_value % 39]
   end

   def encrypt_value
    message.chars.each_slice(4).map do |slice|
      slice.map.with_index do |letter, index|
        rotator.character_map.index(letter) + rotator.rotations[index]
      end
    end
   end
end

rot = Rotator.new

rot.rotations

message = "hello world"

message.chars.each_slice(4).map do |slice|
  slice.map.with_index do |letter, index|
  rot.character_map.index(letter) + rot.rotations[index]
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
