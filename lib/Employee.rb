class Employee
  attr_accessor :name, :salary, :manager_name

  @@all = [] 

  def initialize(name, salary, department)
    @name = name
    @salary = salary
    @manager_name = find_manager_for(department)
    @@all << self
  end

  def self.all
    @@all
  end

  def tax_bracket
    min = self.salary() - 1000
    max = self.salary() + 1000

    @@all.select do |employee|
      employee.salary.between?(min, max) && employee != self
    end
  end

  def self.paid_over(threshold)
    self.all.select { |employee| employee.salary > threshold } 
  end

  def self.find_by_department(department_name)
    manager_for_department =  Manager.all.find { |manager| manager.department == department_name }
    self.all.find do |employee| 
      employee.manager_name == manager_for_department.name
    end
  end

  
  private 
  def find_manager_for(department)
    manager = Manager.all.find { |manager| manager.department == department }
    manager.name
  end


end
