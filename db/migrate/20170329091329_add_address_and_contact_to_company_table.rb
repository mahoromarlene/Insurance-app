class AddAddressAndContactToCompanyTable < ActiveRecord::Migration[5.0]
  def change
    add_column :companies, :address, :string
    add_column :companies, :email, :string
    add_column :companies, :phone_number, :string
    add_column :companies, :pobox, :string
  end
end
