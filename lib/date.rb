class Date
  attr_reader :date  # => nil

  def initialize(date = Time.now.strftime('%m%d%y'))
    @date = date.to_i                                 # => 41315
  end                                                 # => :initialize

  def square_date
    date ** 2      # => 1706929225
  end              # => :square_date

  def last_four_numbers_of_squared_date
    square_date.to_s[-4..-1]             # => "9225"
  end                                    # => :last_four_numbers_of_squared_date
end                                      # => :last_four_numbers_of_squared_date

date = Date.new  # => #<Date:0x007fea31047ec8 @date=41315>

date.last_four_numbers_of_squared_date  # => "9225"



