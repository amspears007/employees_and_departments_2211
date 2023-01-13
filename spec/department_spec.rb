require './lib/department'
require './lib/employee'

RSpec.describe Department do
  it 'exists' do
    customer_service = Department.new("Customer Service") 

    expect(customer_service).to be_a(Department)
  end

  it 'has a name and starts with no employees' do
    customer_service = Department.new("Customer Service")

    expect(customer_service.name).to eq("Customer Service")
    expect(customer_service.employees).to eq([])
  end
end