class CreateEarnings < ActiveRecord::Migration[7.0]
  def change
    create_table :earnings do |t|
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
