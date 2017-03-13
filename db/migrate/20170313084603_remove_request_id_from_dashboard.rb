class RemoveRequestIdFromDashboard < ActiveRecord::Migration[5.0]
  def change
    remove_column :dashboards, :request_id, :integer
  end
end
