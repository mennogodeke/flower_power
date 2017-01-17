# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
1.upto(3) do |i|
  User.create(
          :email => "testklant#{i}@mail.com",
          :password => "password",
          :password_confirmation => "password"
  )
end

1.upto(2) do |i|
  User.create(
          :email => "testmedewerker#{i}@mail.com",
          :password => "password",
          :password_confirmation => "password",
          :employee_role => true
  )
end

1.upto(4) do |i|
  Store.create(
           :store_name => "winkel_#{i}",
           :id => i
  )
end

store = Store.first
store.store_address = "Langelaan1"
store.email = "rotterdam@flowerpower.com"
store.store_zip = "3344tt"
store.store_city = "Rotterdam"
store.store_telephone = "0523-121212"
store.save!

store = Store.find(2)
store.store_address = "Kortelaan 2"
store.email = "amsterdam@flowerpower.com"
store.store_zip = "4433yy"
store.store_city = "Amsterdam"
store.store_telephone = "0523-232222"
store.save!

store = Store.find(3)
store.store_address = "Stadsplein 8"
store.email = "Utrecht@flowerpower.com"
store.store_zip = "1234uv"
store.store_city = "Utrecht"
store.store_telephone = "0523-422433"
store.save!

store = Store.last
store.store_address = "Grote Markt 20"
store.email = "almere@flowerpower.com"
store.store_zip = "4545RR"
store.store_city = "Almere"
store.store_telephone = "0566-909010"
store.save!

product = Product.new
product.id = 1
product.product_name = "artikel 1"
product.product_price = 1
product.save!

product = Product.new
product.id = 2
product.product_name = "artikel 2"
product.product_price = 2
product.save!

product = Product.new
product.id = 3
product.product_name = "artikel 3"
product.product_price = 2.50
product.save!

product = Product.new
product.id = 4
product.product_name = "artikel 4"
product.product_price = 3
product.save!