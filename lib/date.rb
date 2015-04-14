class Date
  attr_reader :date  # => nil

  def initialize(date = Time.now.strftime('%m%d%y'))
    @date = date.to_i                                 # => 41415
  end                                                 # => :initialize

  def square_date
    date ** 2      # => 1715202225
  end              # => :square_date

  def last_four_numbers_of_squared_date
    square_date.to_s[-4..-1]             # => "2225"
  end                                    # => :last_four_numbers_of_squared_date
end                                      # => :last_four_numbers_of_squared_date

date = Date.new  # => #<Date:0x007fd8a89b7e80 @date=41415>

date.last_four_numbers_of_squared_date[0].to_i  # => 2



