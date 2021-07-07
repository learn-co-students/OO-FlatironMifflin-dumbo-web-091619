class Employee
    @@all = []
    attr_accessor :name, :salary, :manager
    def initialize(name, salary, manager)
        @name = name
        @salary = salary
        @manager = manager
        @@all << self
    end
    
    def manager_name
        self.manager.name
    end

    def self.all
        @@all
    end

    def self.paid_over(salary_over)
        self.all.select {|employee| employee.salary > salary_over}
    end

    def self.find_by_department(name_of_department)
        Employee.all.find do |employee| 
            employee.manager.department == name_of_department 
        end
        .name
    end
    def tax_bracket
        Employee.all.select {|employee| employee.salary > self.salary - 1000 && employee.salary < self.salary + 1000 }
    end

end
