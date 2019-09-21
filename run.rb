require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

#managers
mgmt1=Manager.new("dave",30.0,"tech")
mgmt2=Manager.new("joey",31.0,"marketing")
mgmt3=Manager.new("mark",34.0,"sales")
mgmt4=Manager.new("andy",37.0,"production")
mgmt5=Manager.new("steve",39.0,"HR")

#employees

empl1=Employee.new("janet",mgmt1,25000)
empl2=Employee.new("jackson",mgmt1,30000)
empl3=Employee.new("micheal",mgmt2,35000)
empl4=Employee.new("tito",mgmt2,40000)
empl5=Employee.new("jermaine",mgmt3,45000)
empl6=Employee.new("billy",mgmt3,50000)
empl7=Employee.new("mike",mgmt4,55000)
empl8=Employee.new("kim",mgmt4,60000)
empl9=Employee.new("sasha",mgmt5,65000)
empl10=Employee.new("diane",mgmt5,70000)

#new empl
# new_empl=Employee.new(name,age,manager,salary)

#employees w 5 arguments

# empl1=Employee.new("janet",34,mgmt1,25000,"HR")
# empl2=Employee.new("jackson",43,mgmt1,30000,"HR")
# empl3=Employee.new("micheal",65,mgmt2,35000,"production")
# empl4=Employee.new("tito",32,mgmt2,40000,"production")
# empl5=Employee.new("jermaine",33,mgmt3,45000,"sales")
# empl6=Employee.new("billy",27,mgmt3,50000,"sales")
# empl7=Employee.new("mike",25,mgmt4,55000,"marketing")
# empl8=Employee.new("kim",29,mgmt4,60000,"marketing")
# empl9=Employee.new("sasha",38,mgmt5,65000,"tech")
# empl10=Employee.new("diane",42,mgmt5,70000,"tech")


binding.pry
puts "done"
