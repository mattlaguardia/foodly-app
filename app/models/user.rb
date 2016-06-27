class User < ActiveRecord::Base
	# serialize :name, :location, :phone_numbers, :featured_image, :thumb_url, :price_range, :cuisines, :aggregrate_rating, JSON

	has_many :restaurants

end
