require './lib/budget'
require './lib/department'
require './lib/employee'

RSpec.describe Budget do
  it 'exists' do
    budget = Budget.new("2022")
  end
end