class CreateJoinTableMachineSnacks < ActiveRecord::Migration[5.1]
  def change
    create_join_table :machines, :snacks do |t|
      t.references :machine, index: true, foreign_key: true
      t.references :snack, index: true, foreign_key: true

      t.timestamps
    end

  end
end
