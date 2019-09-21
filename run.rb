require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

joey = Manager.new("Joseph Gordon", "marketing", 38)
martha = Manager.new("Martha May Adams", "finance", 32)

libby = Employee.new("Elizabeth Jones", 80000, joey)
tom = Employee.new("Thomas Morgan", 350000, martha)
edward = joey.hire_employee("Edward Norris", 80500)
billy = martha.hire_employee("Billy Bob Bones", 80700)
carrie = martha.hire_employee("Caroline Edwards", 350000)


############################
## Manager class methods ##
###########################

Manager.all 
# => [#<Manager:0x00007f93b89520b0 @age=38, @department="marketing", @name="Joseph Gordon">,
#  #<Manager:0x00007f93b8951f98 @age=32, @department="finance", @name="Martha May Adams">]

Manager.all_departments 
# => ["marketing", "finance"]

Manager.average_age 
# => 35.0

############################
## Employee class methods ##
############################

Employee.all 
# => [#<Employee:0x00007f93b8951f48
#   @manager=#<Manager:0x00007f93b89520b0 @age=38, @department="marketing", @name="Joseph Gordon">,
#   @name="Elizabeth Jones",
#   @salary=300000>,
#  #<Employee:0x00007f93b8951e80
#   @manager=#<Manager:0x00007f93b8951f98 @age=32, @department="finance", @name="Martha May Adams">,
#   @name="Thomas Morgan",
#   @salary=450000>,
#  #<Employee:0x00007f93b8951e08
#   @manager=#<Manager:0x00007f93b89520b0 @age=38, @department="marketing", @name="Joseph Gordon">,
#   @name="Edward Norris",
#   @salary=350000>,
#  #<Employee:0x00007f93b8951d90
#   @manager=#<Manager:0x00007f93b8951f98 @age=32, @department="finance", @name="Martha May Adams">,
#   @name="Billy Bob Bones",
#   @salary=150000>,
#  #<Employee:0x00007f93b8951cf0
#   @manager=#<Manager:0x00007f93b8951f98 @age=32, @department="finance", @name="Martha May Adams">,
#   @name="Caroline Edwards",
#   @salary=350000>]
# (END)

Employee.paid_over(300000) 
# => [#<Employee:0x00007f93b8951e80
#   @manager=#<Manager:0x00007f93b8951f98 @age=32, @department="finance", @name="Martha May Adams">,
#   @name="Thomas Morgan",
#   @salary=450000>,
#  #<Employee:0x00007f93b8951e08
#   @manager=#<Manager:0x00007f93b89520b0 @age=38, @department="marketing", @name="Joseph Gordon">,
#   @name="Edward Norris",
#   @salary=350000>,
#  #<Employee:0x00007f93b8951cf0
#   @manager=#<Manager:0x00007f93b8951f98 @age=32, @department="finance", @name="Martha May Adams">,
#   @name="Caroline Edwards",
#   @salary=350000>]

Employee.find_by_department("marketing") 
# => #<Employee:0x00007f93b8951f48
#  @manager=#<Manager:0x00007f93b89520b0 @age=38, @department="marketing", @name="Joseph Gordon">,
#  @name="Elizabeth Jones",
#  @salary=300000>

Employee.find_by_department("finance") 
# => #<Employee:0x00007f93b8951e80
#  @manager=#<Manager:0x00007f93b8951f98 @age=32, @department="finance", @name="Martha May Adams">,
#  @name="Thomas Morgan",
#  @salary=450000>
# [19] pry(main)> 


###############################
## manager instance methods ##
##############################

joey.employees 
# => [#<Employee:0x00007f93b8951f48
#   @manager=#<Manager:0x00007f93b89520b0 @age=38, @department="marketing", @name="Joseph Gordon">,
#   @name="Elizabeth Jones",
#   @salary=300000>,
#  #<Employee:0x00007f93b8951e08
#   @manager=#<Manager:0x00007f93b89520b0 @age=38, @department="marketing", @name="Joseph Gordon">,
#   @name="Edward Norris",
#   @salary=350000>]

martha.employees 
# => [#<Employee:0x00007f93b8951e80
#   @manager=#<Manager:0x00007f93b8951f98 @age=32, @department="finance", @name="Martha May Adams">,
#   @name="Thomas Morgan",
#   @salary=450000>,
#  #<Employee:0x00007f93b8951d90
#   @manager=#<Manager:0x00007f93b8951f98 @age=32, @department="finance", @name="Martha May Adams">,
#   @name="Billy Bob Bones",
#   @salary=150000>,
#  #<Employee:0x00007f93b8951cf0
#   @manager=#<Manager:0x00007f93b8951f98 @age=32, @department="finance", @name="Martha May Adams">,
#   @name="Caroline Edwards",
#   @salary=350000>]

###############################
## employee instance methods ##
###############################

libby.tax_bracket
# => [#<Employee:0x00007fe326125d20
#   @manager=#<Manager:0x00007fe326125de8 @age=38, @department="marketing", @name="Joseph Gordon">,
#   @name="Elizabeth Jones",
#   @salary=80000>,
#  #<Employee:0x00007fe326125c80
#   @manager=#<Manager:0x00007fe326125de8 @age=38, @department="marketing", @name="Joseph Gordon">,
#   @name="Edward Norris",
#   @salary=80500>,
#  #<Employee:0x00007fe326125c30
#   @manager=#<Manager:0x00007fe326125d70 @age=32, @department="finance", @name="Martha May Adams">,
#   @name="Billy Bob Bones",
#   @salary=80700>]

billy.manager.age
# => 32

edward.manager.department
# => "marketing"

billy.manager.name
# => "Martha May Adams"

carrie.manager.employees
# => [#<Employee:0x00007fe326125cd0
#   @manager=#<Manager:0x00007fe326125d70 @age=32, @department="finance", @name="Martha May Adams">,
#   @name="Thomas Morgan",
#   @salary=350000>,
#  #<Employee:0x00007fe326125c30
#   @manager=#<Manager:0x00007fe326125d70 @age=32, @department="finance", @name="Martha May Adams">,
#   @name="Billy Bob Bones",
#   @salary=80700>,
#  #<Employee:0x00007fe326125be0
#   @manager=#<Manager:0x00007fe326125d70 @age=32, @department="finance", @name="Martha May Adams">,
#   @name="Caroline Edwards",
#   @salary=350000>]

binding.pry
puts "done"
