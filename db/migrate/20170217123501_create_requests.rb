class CreateRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :requests do |t|
      t.integer :user_id
      t.integer :insurance_service_id
      t.integer :company_id

      t.timestamps
    end
  end
end
