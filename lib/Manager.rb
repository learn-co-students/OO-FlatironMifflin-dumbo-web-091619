class Manager

    @@all = []

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @@all << self
    end

    def name
        @name.to_s
    end

    def department
        @department.to_s
    end

    def age
        @age.to_i
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
        Employee.new(name, salary, self.name)
    end

    def self.all_departments
        self.all.map do |manager|
            manager.department
        end
    end

    def self.average_age
        ages = self.all.map do |manager|
            manager.age
        end
        ages.inject {|sum, el| sum + el}.to_f / ages.size
    end

end
