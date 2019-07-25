class CreateLawyers < ActiveRecord::Migration[5.2]
  def change
    create_table :lawyers do |t|
      t.string :name
      t.integer :experiance
      t.string :img
      t.string :bio
      t.string :mail

      t.timestamps
    end
  end
end
