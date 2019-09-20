class Employee

  attr_reader :name, :salary, :manager_name

  @@all = []

  def initialize(name, salary, manager_name)
    @name = name
    @salary = salary
    @manager_name = manager_name
    @@all << self
  end

  def self.paid_over(amount)
  # * `Employee.paid_over`
  #   * takes a `Fixnum` argument and returns an `Array` of all the employees whose salaries are over that amount
    self.all.select do |employee|
      employee.salary > amount
    end
  end


  def self.find_by_department(department_name)
    # * `Employee.find_by_department`
    #   * takes a `String` argument that is the name of a department and returns the first employee whose manager is working in that department
    manager = Manager.all.find { |manager| manager.department == department_name }
    puts manager
    self.all.find { |employee| employee.manager_name == manager.name  }
  end

  def tax_bracket
    # * `Employee#tax_bracket`
    #   * returns an `Array` of all the employees whose salaries are within $1000 (± 1000) of the employee who invoked the method
    Employee.all.filter { |employee| (employee.salary - self.salary).abs <= 1000  }
  end

  def self.all
    @@all
  end

end
