class AddColsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :cases, :lawyer, :integer
    add_column :cases, :status, :boolean, :default => false 
  end
end
