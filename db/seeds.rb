# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

oren = User.new(username: "oren", password: "test", email: "autoimpedicis@gmail.com")

b = Disposition.create(disposition_type: "burial")
c = Disposition.create(disposition_type: "cremation")

oren.disposition = c
oren.save
