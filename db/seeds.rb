# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all

users = User.create([{username: "MichaelChengalo", first_name: "Mike", last_name: "Cheng", email: "mc@gmail.com", password_digest: "password1"},
  {username: "Sullymander", first_name: "Matt", last_name: "Sullivan", email: "ms@gmail.com", password_digest:"password2"},
  {username: "BenTakesPicOfHisFood", first_name: "Matt", last_name: "Laguardia", email: "ml@gmail.com", password_digest: "password3"},
  {username: "aJENda", first_name: "Jen", last_name: "Mcphail", email: "jm@gmail.com", password_digest: "password4"}])
