class Budget
  attr_reader :year, :departments

  def initialize(year)
    @year = year
    @departments = []
  end

  def add_department(department)
    departments << department
  end

  def expenses_less_than_500
    @departments.find_all do |department|
      department.expenses < 500 
    end
  end

  def employees_salaries
    salary_hash = {}
    @departments.each do |department|
      department.employees.each do |employee|
        salary_hash[employee.name] = employee.salary
      end
      salary_hash
    end
  
  end
end