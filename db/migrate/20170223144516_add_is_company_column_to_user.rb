class AddIsCompanyColumnToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :is_company, :boolean
  end
end
