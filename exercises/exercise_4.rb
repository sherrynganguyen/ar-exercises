require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
Store.create do |store|
  store.name = "Surrey"
  store.annual_revenue = 224000
  store.mens_apparel = false
  store.womens_apparel = true
end

Store.create do |store|
  store.name = "Whistler"
  store.annual_revenue = 1900000
  store.mens_apparel = true
  store.womens_apparel = false
end

Store.create do |store|
  store.name = "Yaletown"
  store.annual_revenue = 430000
  store.mens_apparel = true
  store.womens_apparel = true
end

@men_stores = Store.where(womens_apparel: false)
@men_stores.each { |store| puts store.name, store.annual_revenue}

@women_stores = Store.where(mens_apparel: false && annual_revenue < 1000000)
@women_stores.each { |store| puts store.name, store.annual_revenue}