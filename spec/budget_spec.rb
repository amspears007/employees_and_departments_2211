require './lib/budget'
require './lib/department'
require './lib/employee'

RSpec.describe Budget do
  it 'exists and has a year' do
    budget2021 = Budget.new("2021")
    budget2022 = Budget.new("2022")

    expect(budget2021).to be_a(Budget)
    expect(budget2022).to be_a(Budget)
    expect(budget2021.year).to eq("2021")
  end
end