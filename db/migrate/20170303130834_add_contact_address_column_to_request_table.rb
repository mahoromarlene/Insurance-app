class AddContactAddressColumnToRequestTable < ActiveRecord::Migration[5.0]
  def change
    add_column :requests, :phone_number, :string
    add_column :requests, :email, :string
  end
end
