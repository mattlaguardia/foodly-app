class User < ActiveRecord::Base
	
	validates :username, presence: true, uniqueness: true
	validates :email, presence: true, uniqueness: true, format: /@/
	validates :first_name, :last_name, presence: true

	has_many :likes
	has_many :restaurant_likes, :through => :likes, :source => :restaurant

	has_many :dislikes
	has_many :restaurant_dislikes, :through => :dislikes, :source => :restaurant

	BCrypt::Engine.cost = 12
	has_secure_password

	def self.confirm(email, password)
		user = User.find_by_email(email)
		user.authenticate(password)
	end

end
