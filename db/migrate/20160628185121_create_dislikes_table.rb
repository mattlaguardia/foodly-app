class CreateDislikesTable < ActiveRecord::Migration
  def change
    create_table :dislikes do |t|
    		t.references :restaurant, index: true, foreign_key: true
    		t.references :user, index: true, foreign_key: true
    end
  end
end
