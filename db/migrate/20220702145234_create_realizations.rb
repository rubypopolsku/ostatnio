class CreateRealizations < ActiveRecord::Migration[7.0]
  def change
    create_table :realizations do |t|
      t.datetime :done_at
      t.references :item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
