class AddCompanyIdToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :company_id, :integer
  end
end
