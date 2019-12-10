require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Alex", last_name: "Rob", hourly_rate: 50)
@store1.employees.create(first_name: "Peter", last_name: "Chow", hourly_rate: 40)
@store2.employees.create(first_name: "Lisa", last_name: "Smith", hourly_rate: 50)
@store2.employees.create(first_name: "Sherry", last_name: "Nguyen", hourly_rate: 30)
@store2.employees.create(first_name: "Rob", last_name: "Johnson", hourly_rate: 55)