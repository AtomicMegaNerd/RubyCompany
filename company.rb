module RcdCompany
  class Person
    def initialize(name, age, gender)
      @name = name
      @age = age
      @gender = gender
    end

    attr_accessor :name
    attr_accessor :age
    attr_accessor :gender

    def to_s()
      "Name: #{@name}, Age: #{@age}, Gender: #{@gender}"
    end
  end

  class Employee < Person
    def initialize(name, age, gender, company, employee_id, salary)
      super(name, age, gender)
      @company = company
      @employee_id = employee_id
      @salary = salary
    end

    attr_accessor :company
    attr_accessor :employee_id
    attr_accessor :salary

    def to_s()
      super.to_s +
      ", Company #{@company}, Employee ID: #{@employee_id}" +
      ", Salary $#{@salary}"
    end
  end
end
