require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'

emp1 = Employee.new("One Person", 40000, "One Manager")
emp2 = Employee.new("Two Person", 41000, "One Manager")
emp3 = Employee.new("Three Person", 42000, "One Manager")
emp4 = Employee.new("Four Person", 43000, "Two Manager")
emp5 = Employee.new("Five Person", 56000, "Two Manager")
emp6 = Employee.new("Six Person", 38000, "Two Manager")
emp7 = Employee.new("Seven Person", 37000, "Three Manager")
emp8 = Employee.new("Eight Person", 35000, "Three Manager")
emp9 = Employee.new("Nine Person", 36000, "Three Manager")
emp10 = Employee.new("Ten Person", 39000, "Four Manager")
emp11 = Employee.new("Eleven Person", 50000, "Four Manager")
emp12 = Employee.new("Twelve Person", 51000, "Four Manager")


mang1 = Manager.new("One Manager", "Sales", 55)
mang2 = Manager.new("Two Manager", "Public Relations", 50)
mang3 = Manager.new("Three Manager", "Communications", 45)
mang4 = Manager.new("Four Manager", "Finance", 40)

puts "done"

# binding.pry

# 0