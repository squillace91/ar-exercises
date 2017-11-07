require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
puts "Give a name to your store:"
@storename = gets.chomp

test = Store.create(name: @storename, annual_revenue: 190000, womens_apparel: false, mens_apparel: true)
puts test.errors.messages
