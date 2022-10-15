class CreateBankings < ActiveRecord::Migration[7.0]
  def change
    create_table :bankings do |t|
      t.references :busines, null: false, foreign_key: true
      t.references :income, null: false, foreign_key: true
      t.references :egress, null: false, foreign_key: true
      t.references :account, null: false, foreign_key: true

      t.timestamps
    end
  end
end
