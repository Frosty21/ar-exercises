require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store2.employees.create(first_name: "Nate", last_name: "Dogg", hourly_rate: 40)
@store2.employees.create(first_name: "Daryl", last_name: "Braithwaite", hourly_rate: 80)
@store1.employees.create(first_name: "Mark", last_name: "Seymour", hourly_rate: 70)
@store1.employees.create(first_name: "Jay", last_name: "Z", hourly_rate: 120)
