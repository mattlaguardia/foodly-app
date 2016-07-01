class Restaurant < ActiveRecord::Base

	has_many :likes
	has_many :users, through: :likes

	has_many :dislikes
	has_many :users, through: :dislikes

	## ADD VALIDATION FOR UNIQUENESS FOR YELP ##
	validates :yelp, presence:true, uniqueness:true
end
