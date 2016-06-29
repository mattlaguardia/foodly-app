class Restaurant < ActiveRecord::Base

	has_many :likes
	has_many :users, through: :likes

	has_many :dislikes
	has_many :users, through: :dislikes

	# validates :yelp_id, uniqueness: true

	# def self.search(location)
	# 	if location.present?
	# 		search(location)
	# 	else
	# 		find(:all)
	# 	end
	# end


end
