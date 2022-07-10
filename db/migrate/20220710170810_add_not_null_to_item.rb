class AddNotNullToItem < ActiveRecord::Migration[7.0]
  def change
    change_column :items, :user_id, :integer, null: false
  end
end
