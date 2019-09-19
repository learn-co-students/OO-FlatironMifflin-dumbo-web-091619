require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

manager = Manager.new("Guy")
manager.department = "Engineering"
manager.age = 20

manager = Manager.new("Guy 2")
manager.department = "Engineering2"
manager.age = 30

rob = Employee.new("Roberto", 2000, "Engineering")
rob1 = Employee.new("Roberto", 3000, "Engineering")
rob2 = Employee.new("Roberto", 4000, "Engineering")
rob3 = Employee.new("Roberto", 5000, "Engineering")

binding.pry
puts "done"
