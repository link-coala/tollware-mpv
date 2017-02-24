# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
 milk = Product.create(name: 'Milk (1 liter)', price: 0.45)
 butter = Product.create(name: 'Butter (250 gr)', price: 0.75)
 flour = Product.create(name: 'Flour (1 kg)', price: 0.45)
 order = Order.new(delivery_address: '123 Acme Street, ACME STATE 12345')
 

