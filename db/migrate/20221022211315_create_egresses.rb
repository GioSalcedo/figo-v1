class CreateEgresses < ActiveRecord::Migration[7.0]
  def change
    create_table :egresses do |t|
      t.references :account, null: false, foreign_key: true
      t.integer :balance
      t.string :currency
      t.string :category
      t.date :date
      t.string :beneficiary
      t.text :note

      t.timestamps
    end
  end
end
