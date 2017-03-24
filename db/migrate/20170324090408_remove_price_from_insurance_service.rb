class RemovePriceFromInsuranceService < ActiveRecord::Migration[5.0]
  def change
    remove_column :insurance_services, :price, :decimal
  end
end
