require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here


=begin
   Manager [independent] 
    X) @@all = []
    X) initialize with name,department, age, => add instance to Manager.all array
    X) #employees going to have to select for employees for that particular manager => .select method of Employees.all array matching the manager name || or manager instance
    X) #all => reader for class variable @@all
    X) #hire_employee => create new employee instance with their name, salary and manager_name. (when new instance is created, it will already get added into employee all with the instantiation)
    X) .all_departments => Manager.all.select out the departments for a particular manager.name || or manager instance
    X) .average_age => take the Manager.all then reduce the array and divide by the length

    Employee [dependent]
    X) @@all = []
    X) initialize with name, salary , manager_name, add instance to @@all array
    X) #manager_name just return the instance variable in attr_reader
    X) .all => read out the array of all employees 
    X) .paid_over => take the .all and .select the employees over that argument amount
    5) #tax_bracket => 
    X) .find_by_department => takes an argument and .find the employee whose manager is in department 



=end

manager1 = Manager.new("John","Finance", 32)
employee1 = Employee.new("Mark", 100, manager1)
employee1_1 = Employee.new("Eric", 200, manager1)
manager2 = Manager.new("Ed", "Marketing", 40)
employee2 = Employee.new("Donna", 3000, manager2)
employee2_1 = Employee.new("Lisa", 40000, manager2)
employee2_2 = Employee.new("Tom", 400000, manager2)
manager3 = Manager.new("Joe", "Science", 40)
# test = manager2.hire_employees("Jack", 150)

binding.pry
puts "done"
