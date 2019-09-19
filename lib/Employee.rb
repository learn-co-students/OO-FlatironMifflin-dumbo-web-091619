class Employee
    attr_accessor :salary
    attr_reader :name, :manager_name
    @@all = []
    def initialize(name, salary, manager_name)
        @name = name
        @salary = salary
        @manager_name = manager_name
        @@all << self
    end
    def self.all
        @@all
    end
    def self.paid_over(limit)
        Employee.all.select{|employee|
            employee.salary > limit
        }
    end
    def self.find_by_department(dept)
        dept = Manager.all.find{|manager|
            manager.department == dept
        }.department
    end
    def tax_bracket
        @@up = self.salary+1000
        @@down = self.salary-1000
        Employee.all.select{|employee|
            employee.salary.between?(@@down,@@up)
        }
    end
end
