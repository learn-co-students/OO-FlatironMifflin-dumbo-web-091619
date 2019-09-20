
class Manager 

    @@all = []

 attr_reader :name, :department, :age 
 attr_accessor 

  def initialize(name, department, age)
    @name = name
    @department = department
    @age = age
    @@all.push(self)
  end 

 def self.all 
    @@all
 end 

 def employees
  Employee.all.select { |employee_instance| employee_instance.manager_name == self.name }

 end 

 def self.all_departments
   self.all.map { |manager| manager.department }
 end 

 def hire_employee(name, salary)
  Employee.new(name, salary, self.name)
 end 

 def self.average_age
   avg = get_manager_ages.reduce(:+).to_f / get_manager_ages.length
   avg.round(2)
 end 

private 
 def self.get_manager_ages
   @@all.map { |manager_instance| manager_instance.age }
 end 

end 
