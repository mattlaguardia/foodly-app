class AddsYelpColumnToDislikeLikesRestaurantsTables < ActiveRecord::Migration
  def change
  	add_column :restaurants, :yelp, :string
  	add_column :likes, :yelp, :string
  	add_column :dislikes, :yelp, :string
  end
end
