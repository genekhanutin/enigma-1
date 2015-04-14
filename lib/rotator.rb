require_relative 'key'
require_relative 'date'

class Rotator
  def intialize(key, date)
    @key  = Key.new
    @date = Date.new
  end

  def character_map
    [*('a'..'z'), *('0'..'9'), ' ', '.', ',']
  end
end
