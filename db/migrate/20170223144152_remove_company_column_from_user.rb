class RemoveCompanyColumnFromUser < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :company, :boolean
  end
end
