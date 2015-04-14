class Date
  attr_reader :date

  def initialize(date = Time.now.strftime('%m%d%y'))
    @date = date.to_i
  end

  def square_date
    date ** 2
  end

  def last_four_of_squared_date
    square_date.to_s[-4..-1]
  end
end




