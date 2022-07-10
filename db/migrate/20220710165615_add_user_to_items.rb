class AddUserToItems < ActiveRecord::Migration[7.0]
  def change
    add_column :items, :user_id, :integer
  end
end
