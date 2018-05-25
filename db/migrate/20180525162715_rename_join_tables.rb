class RenameJoinTables < ActiveRecord::Migration[5.1]
  def change
    rename_table :machines_snacks, :machine_snacks
  end
end
