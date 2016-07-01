class ChangesUserIdToStringAndRenamesToStripe < ActiveRecord::Migration
  def change
  	rename_column :users, :customer_id, :user_stripe
  end
end
