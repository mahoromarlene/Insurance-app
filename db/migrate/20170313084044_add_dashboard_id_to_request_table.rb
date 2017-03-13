class AddDashboardIdToRequestTable < ActiveRecord::Migration[5.0]
  def change
    add_column :requests, :dashboard_id, :integer
  end
end
