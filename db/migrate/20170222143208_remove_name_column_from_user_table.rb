class RemoveNameColumnFromUserTable < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :name, :string
  end
end
