class CreateUserResJoinTable < ActiveRecord::Migration
  def change
  	create_table :restaurant_users do |t|
  		t.references :restaurant, index: true, foreign_key: true
  		t.references :user, index: true, foreign_key: true
  	end
  end
end
