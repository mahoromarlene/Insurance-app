class AddCompanyIdToRequest < ActiveRecord::Migration[5.0]
  def change
    add_column :requests, :company_id, :integer
  end
end
