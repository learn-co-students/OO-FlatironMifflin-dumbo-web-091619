# * `Manager#name`
#     * returns a `String` that is the manager's name

# * `Manager#department`
#     * returns a `String` that is the department that the manager oversees

# * `Manager#age`
#     * returns a `Fixnum` that is the age of the manager

# * `Manager#employees`
# * returns an `Array` of all the employees that the manager oversees

# ALL METHODS ABOVE ARE DEFINED IN THE ATTR_READER METHOD

class Manager
    attr_reader :name,:age,:department
    
    @@all = []
    def initialize(name,age,department)
        @name=name
        @age=age
        @department=department
        
        @@all << self     
    end

    # * `Manager.all`
    # * returns an `Array` of all the managers
    # SEE BELOW

    def self.all
        @@all
    end


    # * `Manager#employees`
    # * returns an `Array` of all the employees that the manager oversees
    # SEE BELOW

    def employees
        Employee.all.select do |employee|
            employee.manager == self
             
        end
    end

    # * `Manager#hire_employee`
    # * takes a `String` argument and a `Fixnum` argument of an employee's name and the employee's salary, respectively, and adds that employee to the list of employees that the manager oversees
    # SEE BELOW

    def hire_employee(name,salary)
        Employee.new(name, self, salary)
    end

    # * `Manager.all_departments`
    # * returns an `Array` of all the department names that every manager oversees

    def self.all_departments
        self.all.map do |manager|
            manager.department
        end
    end

    # * `Manager.average_age`
    # * returns a `Float` that is the average age of all the managers
    # SEE BELOW

    def self.average_joe
        age_arr = self.all.map { |manager|manager.age}
        age_arr.reduce(0) { |sum, n| sum + n /5}
    end


    # def give_me_your_age
    #     self.age
    # end


end

