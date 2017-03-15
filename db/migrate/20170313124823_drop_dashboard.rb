class DropDashboard < ActiveRecord::Migration[5.0]
  def up
    drop_table :dashboards
  end

  def down    
    raise ActiveRecord::IrreversibleMigration  
  end
end
