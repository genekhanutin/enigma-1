class Key
  attr_accessor :key    # => nil
  attr_reader :numbers  # => nil

  def initialize(key = '11111')
    @key     = key                  # => "11111"
    @numbers = [1,2,3,4,5,6,7,8,9]  # => [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end                               # => :initialize

  def generate_key
    (numbers * 5).sample(5)  # => [2, 2, 7, 9, 2]
  end                        # => :generate_key
end                          # => :generate_key

key = Key.new.generate_key  # => [2, 2, 7, 9, 2]
key.join[0..1].to_i         # => 22
key.join[1..2].to_i         # => 27
key.join[2..3].to_i         # => 79
key.join[3..4].to_i         # => 92


