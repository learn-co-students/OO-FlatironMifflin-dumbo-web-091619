
class Employee

    @@all = []

    attr_accessor :salary, :manager_name #you could transfer to a new manager or get a raise
    attr_reader :name 

    def initialize(name,salary,manager_name)
     @name = name
     @salary = salary
     @manager_name = manager_name
     @@all.push(self)
    end 

   def self.all 
    @@all 
   end 

   def self.paid_over(amount)
    @@all.select { |employee_instance| employee_instance.salary > amount }
   end 

   def self.find_by_department(department_query)
    #in theory, there is one manager per department, so .find is used
    #also, select gives an array, which will make it harder to call .name on later on
     dept_mgr = Manager.all.find { |manager_instance| manager_instance.department == department_query}
    #use .find again because it asks to return the FIRST employee in that department
     @@all.find { |employee_instance| employee_instance.manager_name == dept_mgr.name }
    end 

    def tax_bracket
      my_salary = self.salary 
      @@all.select { |employee_instance| (employee_instance.salary + 1000 ) > my_salary && my_salary > (employee_instance.salary - 1000 ) }
     #should we remove self? if so, I'd do it like this:
     # bracket_array = @@all.select { |employee_instance| (employee_instance.salary + 1000 ) > my_salary && my_salary > (employee_instance.salary - 1000 ) }
     # bracket_array.delete(self)
     # bracket_array
    end 

end
