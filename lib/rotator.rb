require_relative 'key'
require_relative 'date'

class Rotator
  attr_reader :key, :date

  def initialize(key = Key.new.generate_key, date = Date.new.last_four_of_squared_date)
    @key  = key
    @date = date
  end

  def character_map
    [*('a'..'z'), *('0'..'9'), ' ', '.', ',']
  end

  def rotation_a
    key.join[0..1].to_i + date[0].to_i
  end

  def rotation_b
    key.join[1..2].to_i + date[1].to_i
  end

  def rotation_c
    key.join[2..3].to_i + date[2].to_i
  end

  def rotation_d
    key.join[3..4].to_i + date[3].to_i
  end

  def rotations
    [rotation_a, rotation_b, rotation_c, rotation_d]
  end
end

rot = Rotator.new

rot.rotations

message = "hello world"

message.chars.each_slice(4).map do |chunk|
  chunk.map.with_index do |char, index|
  rot.character_map.index(char) + rot.rotations[index]
 end
end
