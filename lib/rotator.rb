require_relative 'key'
require_relative 'date'

class Rotator
  attr_reader :key, :date

  def initialize(key = Key.new.generate_key, date)
    @key  = key
    @date = Date.new(date).last_four_of_squared_date
  end

  def character_map
    [*('a'..'z'), *('0'..'9'), ' ', '.', ',']
  end

  def rotation_a
    # require 'pry' ; binding.pry
    key[0..1].join.to_i + date[0].to_i
  end

  def rotation_b
    key[1..2].join.to_i + date[1].to_i
  end

  def rotation_c
    key[2..3].join.to_i + date[2].to_i
  end

  def rotation_d
    key[3..4].join.to_i + date[3].to_i
  end

  def rotations
    [rotation_a, rotation_b, rotation_c, rotation_d]
  end
end