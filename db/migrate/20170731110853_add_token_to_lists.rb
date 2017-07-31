class AddTokenToLists < ActiveRecord::Migration[5.1]
  def change
    add_column :lists, :token, :string
  end
end
