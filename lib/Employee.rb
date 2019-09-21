# * `Employee#name`
#     * returns a `String` that is the employee's name
#   * `Employee#salary`
#     * returns a `Fixnum` that is the employee's salary
#   * `Employee#manager_name`
#     * returns a `String` that is the name of their manager
#     ALL METHODS ABOVE ARE DEFINED IN THE ATTR_READER 
#     SEE BELOW

class Employee
    attr_reader :name,:manager,:salary
    
    @@all = []
    def initialize(name,manager,salary)
        @name=name
        @manager=manager
        @salary=salary
        @@all << self
    end

    # * `Employee.all`
    # * returns an `Array` of all the employees
    # SEE BELOW

    def self.all
        @@all
    end

    # * `Employee.paid_over`
    # * takes a `Fixnum` argument and returns an `Array` of all the employees whose salaries are over that amount

    def paid_over(salary)
        Employee.all.select do |employee|
            employee.salary >= salary
        end 
    end

# Employee.find_by_department
# takes a String argument that is the name of a department and returns the first employee whose manager is working in that department
# SEE BELOW

    def self.find_by_department(department)
        Employee.all.find do |employee|
            employee.manager.department == department
        end
    end

    #Employee#tax_bracket
    # returns an Array of all the employees whose salaries are within $1000 (± 1000) of the employee who invoked the method
    # SEE BELOW

    def tax_bracket
        sal_rnge=(-1000..1000)
        Employee.all.select {|empl| empl.salary == sal_rnge}
    end

    

end