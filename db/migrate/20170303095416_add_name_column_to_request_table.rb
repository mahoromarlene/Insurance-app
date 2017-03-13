class AddNameColumnToRequestTable < ActiveRecord::Migration[5.0]
  def change
    add_column :requests, :first_name, :string
    add_column :requests, :last_name, :string
  end
end
