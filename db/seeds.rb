# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Order.create([
  {client_name: 'John', phone: '345', address: '321'}
  
])

order_a = Order.create({client_name: 'bam', phone: '34', address: '31'})

order_a.items.create({item_name: "Challah", item_price: "$3.00"})



