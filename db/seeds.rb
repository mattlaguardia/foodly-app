# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Restaurant.destroy_all

users = User.create! ([{username: "MichaelChengalo", first_name: "Mike", last_name: "Cheng", email: "mc@gmail.com", password_digest: "password1"},
  {username: "Sullymander", first_name: "Matt", last_name: "Sullivan", email: "ms@gmail.com", password_digest:"password2"},
  {username: "BenTakesPicOfHisFood", first_name: "Matt", last_name: "Laguardia", email: "ml@gmail.com", password_digest: "password3"},
  {username: "aJENda", first_name: "Jen", last_name: "Mcphail", email: "jm@gmail.com", password_digest: "password4"}])


restaurants = Restaurant.create! ([{name: "Chipotle", location: "USA", phone_numbers: "555-5555", featured_image: "https://s3-media1.fl.yelpcdn.com/bphoto/dXXqV2AU1sdXGzYcrBlAHg/ms.jpg", thumb_url: "http://google.com", price_range: "high", cuisines: "Burritos", aggregate_rating: "5", user_id: nil},
  {name: "Simple Pleasures", location: "San Francisco, CA", phone_numbers: "555-5555", featured_image: "https://s3-media1.fl.yelpcdn.com/bphoto/dXXqV2AU1sdXGzYcrBlAHg/ms.jpg", thumb_url: "http://google.com", price_range: "low", cuisines: "cafe", aggregate_rating: "5", user_id: nil},
  {name: "Shanghai Dumpling King", location: "San Francisco, CA", phone_numbers: "555-5555", featured_image: "https://s3-media1.fl.yelpcdn.com/bphoto/dXXqV2AU1sdXGzYcrBlAHg/ms.jpg", thumb_url: "http://google.com", price_range: "medium", cuisines: "Dumplings", aggregate_rating: "5", user_id: nil},
  {name: "Noodle World", location: "San Francisco, CA", phone_numbers: "555-5555", featured_image: "https://s3-media1.fl.yelpcdn.com/bphoto/dXXqV2AU1sdXGzYcrBlAHg/ms.jpg", thumb_url: "http://google.com", price_range: "high", cuisines: "Noods", aggregate_rating: "3", user_id: nil}])
