=begin
  This is only for proctice ruby concept and will update time to time
=end

class Employee
  @@all_employee =[]

  attr_accessor :name, :department

  def initialize(name, department)
      @name = name
      @department = department
      pp @@all_employee <<self
  end

  def self.all_employees
     pp @@all_employee
  end
end

employee1 = Employee.new('joh','IT')
# self.all_employees is class method
Employee.all_employees

class Demo
  private
  def exp
    pp "this is private method"
  end
end

obj = Demo.new
obj.send:exp
obj.instance_eval{exp}



# how to create alias of a method

class Example
  def car 
    pp "test alias method"
  end

  alias test car
end

example = Example.new
example.test

