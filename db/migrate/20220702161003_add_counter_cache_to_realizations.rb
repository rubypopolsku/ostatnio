class AddCounterCacheToRealizations < ActiveRecord::Migration[7.0]
  def change
    add_column :items, :realizations_count, :integer
  end
end
