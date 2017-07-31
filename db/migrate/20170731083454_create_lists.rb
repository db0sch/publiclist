class CreateLists < ActiveRecord::Migration[5.1]
  def change
    create_table :lists do |t|
      t.integer :list_id
      t.string :title

      t.timestamps
    end
  end
end
