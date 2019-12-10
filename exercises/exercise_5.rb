require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
@total_revenue = Store.sum(:annual_revenue)
puts @total_revenue

@average_revenue = @total_revenue / Store.count(:name)
puts @average_revenue

@store_num = 0
@store = Store.all
@store.each { |store| store.annual_revenue > 1000000 ? @store_num += 1 : @store_num }

puts @store_num