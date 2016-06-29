class Restaurant < ActiveRecord::Base

	# serialize :name, :location, :phone_numbers, :featured_image, :thumb_url, :price_range, :cuisines, :aggregrate_rating, JSON

	has_many :likes
	has_many :users, through: :likes

	has_many :dislikes
	has_many :users, through: :dislikes

	

end
