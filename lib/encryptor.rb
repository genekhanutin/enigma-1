require_relative 'rotator'

class Encryptor
  def initialize(rotator = Rotator.new, message = "")
    @rotator = rotator
    @messag  = message
  end
end

# instantiate new instance of rotator class
# use its rotation methods and character map to do encryption

# find index position of letter/character on character-map (.index())
# .index will return index position of letter in message on character map
# add rotation vlaue to that index position
# find new value at that position


# message will be passed into encryptor
# then encryptor will be passed/instantiated in encrypt
