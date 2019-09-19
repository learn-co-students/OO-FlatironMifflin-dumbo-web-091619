class Employee

	attr_reader :name
	attr_accessor :salary, :manager_name

	@@all = []

	def initialize(name, salary, manager_name)
		@name = name
		@salary = salary
		@manager_name = manager_name
		@@all << self
	end

	def self.paid_over(n)
		Employee.all.select { |person| person.salary > n }
	end

	def self.find_by_department(department)
		Manager.all.select { |person|
			if person.department == department
				person.employees[0]
			end
		}
	end
	def tax_bracket
		Employee.all.select { |person| person.salary >= (self.salary - 1000) && person.salary <= (self.salary + 1000) }
	end

	def self.all
		@@all
	end

end