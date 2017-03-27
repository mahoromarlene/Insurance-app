class AddApprovedToRequest < ActiveRecord::Migration[5.0]
  def change
    add_column :requests, :approved, :boolean, default: false
  end
end
