class Employee

    attr_accessor :name, :salary, :manager_name

    @@all = []

    def initialize (name, salary, manager_name)
        @name = name
        @salary = salary
        @manager_name = manager_name
        @@all << self 
    end
    
    def self.paid_over(money)
        Employee.all.select do |worker|
            worker.salary > money
        end
    end

    def self.find_by_department(dment)
        Employee.all.find do |worker|
            worker.manager_name.department == dment
        end
    end

    def tax_bracket 
        Employee.all.select do |worker|
            worker.salary < self.salary + 1000 && worker.salary > self.salary - 1000
        end
    end

    def self.all
        @@all
    end

end

