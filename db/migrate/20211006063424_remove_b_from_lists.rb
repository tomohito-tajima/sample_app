class RemoveBFromLists < ActiveRecord::Migration[5.2]
  def change
    remove_column :lists, :B, :string
  end
end
