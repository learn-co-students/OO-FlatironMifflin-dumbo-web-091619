require 'pry'
class Manager
    @@all = []
    attr_reader :name, :department, :age
    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @@all << self
    end

    def self.all
        @@all
    end

    def hire_employees(name, salary)
        Employee.new(name, salary, self)
    end

    def employees
        Employee.all.select {|employee| employee.manager_name == self}
    end


    def self.all_departments
        self.all.map {|manager| manager.department}
    end

    def self.average_age
        self.all.reduce(0) do |sum , manager|
            sum.to_f + manager.age
        end / Manager.all.length
    end
end

