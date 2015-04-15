class Key
  attr_accessor :key    # => nil
  attr_reader :numbers  # => nil

  def initialize(key = '11111')
    @key     = key                  # => "11111"
    @numbers = [1,2,3,4,5,6,7,8,9]  # => [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end                               # => :initialize

  def generate_key
    (numbers * 5).sample(5)  # => [6, 2, 5, 7, 8]
  end                        # => :generate_key
end                          # => :generate_key

# Key.new.generate_key[0..1].join.to_i  # => 62

# "68465".chars[0..1].join.to_i  # => 68



