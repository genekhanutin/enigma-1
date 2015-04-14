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
# pass in a new instance of Key and Date 
# will Key create a 5 digit key if passed in in current state?
# call generate_key on instance of key
# slice.join[appropriate index].to_i on return value of that 
# add index 0..3 .to_i of last four of date for total rotation value

