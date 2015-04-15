class Key
  attr_accessor :key
  attr_reader :numbers

  def initialize(key = '11111')
    @key     = key
    @numbers = [1,2,3,4,5,6,7,8,9]
  end

  def generate_key
    (numbers * 5).sample(5).join
  end
end



