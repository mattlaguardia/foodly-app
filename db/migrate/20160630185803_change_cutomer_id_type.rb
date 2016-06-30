class ChangeCutomerIdType < ActiveRecord::Migration
  def change
  	change_column :users, :customer_id, :string
  end
end
