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

  it 'starts with no deparments' do
    budget2021 = Budget.new("2021")
    budget2022 = Budget.new("2022")

    expect(budget2021.deparments).to eq([])
    expect(budget2022.deparments).to eq([])
  end

  it 'can add and list departments' do
    budget2021 = Budget.new("2021")
    budget2022 = Budget.new("2022")

    customer_service = Department.new("Customer Service") 
    human_resources = Department.new("Human Resources")
    it = Department.new("IT")

    budget2021.add_department(customer_service)
    budget2021.add_department(human_resources)
    budget2021.add_department(it)

    expect(budget2021.add_department).to match_array([customer_service, human_resources. it])







    
  end
end