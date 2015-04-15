class Date
  attr_reader :date  # => nil

  def initialize(date = Time.now.strftime('%m%d%y'))
    @date = date.to_i                                 # => 41515
  end                                                 # => :initialize

  def square_date
    date ** 2
  end              # => :square_date

  def last_four_of_squared_date
    square_date.to_s[-4..-1]
  end                            # => :last_four_of_squared_date
end                              # => :last_four_of_squared_date




Date.new("041515").date  # => 41515

