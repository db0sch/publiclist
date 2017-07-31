class CreateLists < ActiveRecord::Migration[5.1]
  def change
    create_table :lists do |t|
      t.integer :list_id
      t.string :title
      t.references :user, foreign_key: true, index: true

      t.timestamps
    end
  end
end
