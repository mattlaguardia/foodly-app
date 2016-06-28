class User < ActiveRecord::Base
	# serialize :name, :location, :phone_numbers, :featured_image, :thumb_url, :price_range, :cuisines, :aggregrate_rating, JSON

	has_many :restaurant_users
	has_many :restaurants, through: :restaurant_users

	BCrypt::Engine.cost = 12
	has_secure_password

	def self.confirm(email, password)
		user = User.find_by_email(email)
		user.authenticate(password)
	end

end
