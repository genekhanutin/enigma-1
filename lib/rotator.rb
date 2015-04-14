require_relative 'key'   # => true
require_relative 'date'  # => true

class Rotator
  attr_reader :key, :date  # => nil

  def intialize
    @key  = Key.new.generate_key
    @date = Date.new.last_four_numbers_of_squared_date
  end                                                   # => :intialize

  def character_map
    [*('a'..'z'), *('0'..'9'), ' ', '.', ',']
  end                                          # => :character_map

  def rotation_a
    key.join[0..1].to_i + date[0].to_i
  end                                   # => :rotation_a

  def rotation_b
    key.join[1..2].to_i + date[1].to_i
  end                                   # => :rotation_b

  def rotation_c
    key.join[2..3].to_i + date[2].to_i
  end                                   # => :rotation_c

  def rotation_d
    key.join[3..4].to_i + date[3].to_i #all rotations return integers
  end             # => :rotation_d
end               # => :rotation_d