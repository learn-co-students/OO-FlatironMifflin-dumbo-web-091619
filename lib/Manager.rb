class Manager
    attr_reader :name, :department, :age
    attr_accessor :employees
    @@all = []
    @@employees_arr = Array.new
    def initialize(name, dept, age, employees)
        @name = name
        @department = dept
        @age = age
        @@employees_arr << employees
        @employees = @@employees_arr
        @@all << self
    end
    def self.all
        @@all
    end
    def hire_employee(newemp, salary, emp_id)
        emp_id = Employee.new(newemp, salary, self.name)
    end
    def self.all_departments
        Manager.all.map{|manager|
            manager.department
        }
    end
    def self.average_age
        @@ages = Manager.all().map{|manager|
            manager.age
        }
        @@total = @@ages.reduce(0){|sum, n|
            sum + n
        }
        @@total = @@total/@@ages.length
    end
end
