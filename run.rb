require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

employee1 = Employee.new("Victoria", 40000, "Harold")
employee2 = Employee.new("Erica", 40050, "Jeremy")
employee3 = Employee.new("David", 60000, "Diane")

manager1 = Manager.new("Harold", "Accounting", 35)
manager2 = Manager.new("Jeremy", "IT", 42)
manager3 = Manager.new("Diane", "Mail Room", 28)


binding.pry
puts "done"
