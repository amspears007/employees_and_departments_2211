class Budget
  attr_reader :year, :deparments

  def initialize(year)
    @year = year
    @deparments = []
  end
end