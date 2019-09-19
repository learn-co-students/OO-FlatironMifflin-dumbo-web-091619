class Manager
  attr_accessor :name, :age, :employees, :department

  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def employees
    Employee.all.select do |employee|
      employee.manager_name == self.name
    end
  end

  def hire_employee(name, salary)
    Employee.new(name, salary, self.department())
  end

  def self.all_departments
    @@all.map {|manager| manager.department}
  end

  def self.average_age
    return "Sorry no managers" unless @@all.count > 0 

    sum_of_ages = self.all.reduce(0) do |total_age, current_manager|
      total_age += current_manager.age 
    end
    sum_of_ages / self.all.count
  end

end
