class Manager

	attr_reader :name
	attr_accessor :department, :age

	@@all = []

	def initialize(name, department, age)
		@name = name
		@department = department
		@age = age
		@@all << self
	end

	def employees
		Employee.all.select { |worker| worker.manager_name == name }
	end

	def hire_employee(name, salary)
		employees << Employee.new(name, salary, manager_name = self.name)
	end

	def self.all_departments
		Manager.all.map {|field| field.department }
	end

	def self.average_age
		sum = 0
			Manager.all.map {|manager| sum += manager.age }
		sum / Manager.all.length
	end

	def self.all
		@@all
	end
end