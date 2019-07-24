class CreateCases < ActiveRecord::Migration[5.2]
  def change
    create_table :cases do |t|
      t.references :user, foreign_key: true
      t.string :subject
      t.string :detail
      t.string :opposing_lawyer

      t.timestamps
    end
  end
end
