require_relative 'company'

include RcdCompany

puts 'Define some people'

rcd = Employee.new('Chris Dunphy', 43, :male, 'FGL Sports Inc.', 32139, 999999.00)
lad = Person.new('Lori-Ann Dunphy', 47, :female)

people = [rcd, lad]

people.each do |person|
    puts person
end

puts 'Let\'s give all employees a raise...'
puts

company = [rcd]

company = company.map do |employee|
    employee.salary *= 2
    employee
end

company.each do |employee|
    puts employee
end