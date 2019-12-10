require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...
Store.create do |store|
  store.name = "Burnaby"
  store.annual_revenue = 300000
  store.mens_apparel = true
  store.womens_apparel = true
end

Store.create do |store|
  store.name = "Richmond"
  store.annual_revenue = 1260000
  store.mens_apparel = false
  store.womens_apparel = true
end

Store.create do |store|
  store.name = "Gastown"
  store.annual_revenue = 190000
  store.mens_apparel = true
  store.womens_apparel = false
end

puts Store.count