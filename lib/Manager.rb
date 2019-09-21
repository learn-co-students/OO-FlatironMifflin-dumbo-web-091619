# **`Manager`**
#   * `Manager#name`
#     * returns a `String` that is the manager's name
#   * `Manager#department`
#     * returns a `String` that is the department that the manager oversees
#   * `Manager#age`
#     * returns a `Fixnum` that is the age of the manager
#   * `Manager#employees`
#     * returns an `Array` of all the employees that the manager oversees
#   * `Manager.all`
#     * returns an `Array` of all the managers
#   * `Manager#hire_employee`
#     * takes a `String` argument and a `Fixnum` argument of an employee's name and the employee's salary, respectively, and adds that employee to the list of employees that the manager oversees
#   * `Manager.all_departments`
#     * returns an `Array` of all the department names that every manager oversees
#   * `Manager.average_age`
#     * returns a `Float` that is the average age of all the managers

class Manager

    attr_reader :name, :department, :age

    @@all = []

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @@all << self
    end

    def self.all
        @@all
    end

    def self.all_departments
        @@all.map do |manager|
           manager.department 
        end
    end

    def self.average_age
        ages_total = @@all.reduce(0) do |accumulator, manager|
            accumulator += manager.age
        end
        average_age = ages_total.to_f / @@all.length
    end

    def employees
        Employee.all.select do |employee|
            employee.manager == self
        end
    end

    def hire_employee(employee_name, employee_salary)
        Employee.new(employee_name, employee_salary, self)
    end


end
