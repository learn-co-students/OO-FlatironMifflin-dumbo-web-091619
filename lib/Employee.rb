class Employee

    @@all = []

    def initialize(name,salary,manager_name)
        @name = name
        @salary = salary
        @manager_name = manager_name
        @@all << self
    end

    def name
        @name.to_s
    end

    def salary
        @salary.to_s
    end

    def manager_name
        @manager_name.to_s
    end

    def self.all
        @@all
    end

    def self.paid_over(amount)
        self.all.select do |employee|
            employee.salary.to_i > amount.to_i
        end
    end

    def self.find_by_department(department)
        right_manager = Manager.all.find do |manager|
            manager.department == department
        end
        self.all.find do |employee|
            employee.manager_name == right_manager.name
        end
    end

    def tax_bracket
        salary_range = ((self.salary.to_i-1000) .. (self.salary.to_i+1000)).to_a
        Employee.all.select do |employee|
            salary_range.include?(employee.salary.to_i)
        end
    end

end
