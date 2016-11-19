cart app
rake db:reset db:migrate db:seed

milk = Product.create(name: 'Milk (1 liter)', price: 0.45)

butter = Product.create(name: 'Butter (250 gr)', price: 0.75)
   
flour = Product.create(name: 'Flour (1 kg)', price: 0.45)   

order = Order.new(delivery_address: '123 Acme Street, ACME STATE 12345')

order.products.count

order.products << milk

order.line_items

order.save