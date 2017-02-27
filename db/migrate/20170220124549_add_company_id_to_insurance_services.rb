class AddCompanyIdToInsuranceServices < ActiveRecord::Migration[5.0]
  def change
    add_column :insurance_services, :company_id, :integer
  end
end
