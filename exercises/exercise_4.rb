require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

burnaby = Store.create(name: "Surrey", annual_revenue: 224000, womens_apparel: true, mens_apparel: false)
richmond = Store.create(name: "Whistler", annual_revenue: 1900000, womens_apparel: false, mens_apparel: true)
gastown = Store.create(name: "Yaletown", annual_revenue: 430000, womens_apparel: true, mens_apparel: true)

@mens_stores =  Store.where({mens_apparel: true})
@womens_stores =  Store.where("mens_apparel = ? AND annual_revenue < ?", true, 1000000)

puts "----------- MEN -----------"

@mens_stores.each do |i|
  puts "#{i.name}: #{i.annual_revenue}"
end

puts "----------- WOMEN -----------"

@womens_stores.each do |i|
  puts "#{i.name}: #{i.annual_revenue}"
end
