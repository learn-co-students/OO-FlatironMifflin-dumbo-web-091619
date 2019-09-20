class Manager
    
    attr_accessor :name, :department, :age

    @@all = []
    their_employee = []

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @@all << self
    end

    def employees
        Employee.all.select do |employee|
            employee.manager_name == self
        end
    end

    def hire_employee(name, salary)
        their_employee << Employee.new(name, salary, self)
    end

    def self.all_departments
        Manager.all.map do |boss|
            boss.department
        end
    end

    def self.average_age
        total_age = 0
        Manager.all.each do |boss|
            total_age += boss.age
        end
        total_age/Manager.all.map {|boss| boss}.length
    end

    def self.all
        @@all
    end

end

