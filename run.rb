require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

manager1 = Manager.new("Harold", "Accounting", 35)
manager2 = Manager.new("Jeremy", "IT", 42)
manager3 = Manager.new("Diane", "Mail Room", 28)

employee1 = Employee.new("Victoria", 40000, manager1)
employee2 = Employee.new("Erica", 40050, manager2)
employee3 = Employee.new("David", 60000, manager3)




binding.pry
puts "done"
