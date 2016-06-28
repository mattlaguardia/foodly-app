class RenameRestaurantUserToLikes < ActiveRecord::Migration
  def change
    rename_table :restaurant_users, :likes
  end
end
