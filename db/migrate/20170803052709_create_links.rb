class CreateLinks < ActiveRecord::Migration[5.1]
  def change
    create_table :links do |t|
      t.string :short_link
      t.references :list, foreign_key: true, index: true

      t.timestamps
    end
  end
end
