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

  it 'starts with no departments' do
    budget2021 = Budget.new("2021")
    budget2022 = Budget.new("2022")

    expect(budget2021.departments).to eq([])
    expect(budget2022.departments).to eq([])
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

    expect(budget2021.departments).to match_array([customer_service, human_resources, it])
  end

  it 'can list all departments with budgets expenses less than $500' do
    budget2021 = Budget.new("2021")

    customer_service = Department.new("Customer Service") 
    human_resources = Department.new("Human Resources")
    it = Department.new("IT")

    budget2021.add_department(customer_service)
    budget2021.add_department(human_resources)
    budget2021.add_department(it)

    customer_service.expense(150)
    human_resources.expense(100)
    it.expense(550)

    expect(budget2021.expenses_less_than_500).to match_array([customer_service, human_resources])
  end
end