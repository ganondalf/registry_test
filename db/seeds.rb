# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Person.create(first_name: "Carolyn", last_name: "Ganon", age: 24, gender: "female", is_married: false)

Person.create(first_name: "Max", last_name: "Cantor", age: 30, gender: "male", is_married: false)
Person.create(first_name: "Michelle", last_name: "Ganon", age: 55, gender: "female", is_married: true)
Person.create(first_name: "Bill", last_name: "Ganon", age: 55, gender: "male", is_married: true)
