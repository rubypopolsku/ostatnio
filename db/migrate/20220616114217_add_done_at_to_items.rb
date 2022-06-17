class AddDoneAtToItems < ActiveRecord::Migration[7.0]
  def change
    add_column :items, :done_at, :datetime
  end
end
