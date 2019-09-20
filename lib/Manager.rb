class Manager

  attr_reader :name, :department, :age

  @@all = []

  def initialize(name, department, age)
    @name = name
    @department = department
    @age = age
    @@all << self
  end


  def employees
    Employee.all.select do |employee|
      employee.manager_name == self.name
    end
  end


  def hire_employee(name, salary)
    Employee.new(name, salary, self.name)
  end


  def self.all_departments
    # * `Manager.all_departments`
    #   * returns an `Array` of all the department names that every manager oversees
    Manager.all.map { |manager| manager.department  }.uniq
  end


  def self.average_age
    ages = Manager.all.map { |manager| manager.age }
    ages.reduce(:+).to_f / ages.size
  end



  def self.all
    @@all
  end
end
