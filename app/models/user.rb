class User < ActiveRecord::Base
	# serialize :name, :location, :phone_numbers, :featured_image, :thumb_url, :price_range, :cuisines, :aggregrate_rating, JSON
	validates :username, presence: true, uniqueness: true
	validates :email, presence: true, uniqueness: true, format: /@/
	validates :first_name, :last_name, presence: true

	has_many :likes
	has_many :restaurants, through: :likes

	has_many :dislikes
	has_many :restaurants, through: :dislikes

	BCrypt::Engine.cost = 12
	has_secure_password

	def self.confirm(email, password)
		user = User.find_by_email(email)
		user.authenticate(password)
	end


end
