class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.references :busines, null: false, foreign_key: true
      t.string :name
      t.integer :balance
      t.string :currency
      t.references :banking, null: false, foreign_key: true

      t.timestamps
    end
  end
end
