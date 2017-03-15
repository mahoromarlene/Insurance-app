class RemoveDashboardIdFromRequest < ActiveRecord::Migration[5.0]
  def change
    remove_column :requests, :dashboard_id, :integer
  end
end
