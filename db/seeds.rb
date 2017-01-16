# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user1 = User.new
user1.email = 'testklant1@mail.com'
user1.password = 'password'
user1.password_confirmation = 'password'
user1.save!

user2 = User.new
user2.email = 'testklant2@mail.com'
user2.password = 'password'
user2.password_confirmation = 'password'
user2.save!

user3 = User.new
user3.email = 'testklant3@mail.com'
user3.password = 'password'
user3.password_confirmation = 'password'
user3.save!

user4 = User.new
user4.email = 'testmedewerker1@mail.com'
user4.password = 'password'
user4.password_confirmation = 'password'
user4.employee_role = true
user4.save!

user5 = User.new
user5.email = 'testmedewerker2@mail.com'
user5.password = 'password'
user4.employee_role = true
user5.password_confirmation = 'password'
user5.save!
