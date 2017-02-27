class AddCompanyToUsersTable < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :company, :boolean
  end
end
