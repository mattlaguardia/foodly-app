class AddRestaurantsTable < ActiveRecord::Migration
  def change
  	create_table :restaurants do |t|
  		t.string :name
  		t.string :location
  		t.string :phone_numbers
  		t.string :featured_image
  		t.string :thumb_url
  		t.string :price_range
  		t.string :cuisines
  		t.string :aggregate_rating
  	end

  end
end
