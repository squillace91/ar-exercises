require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Joao", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Eddy", last_name: "Virani", hourly_rate:60)
@store1.employees.create(first_name: "Jon", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Blake", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Shawn", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Joel", last_name: "Virani", hourly_rate: 60)
# Employee.create(first_name: "Joel2", last_name: "Virani", hourly_rate: 60)