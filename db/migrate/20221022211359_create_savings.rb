class CreateSavings < ActiveRecord::Migration[7.0]
  def change
    create_table :savings do |t|
      t.references :business, null: false, foreign_key: true
      t.string :name
      t.date :date
      t.integer :balance
      t.string :currency
      t.text :note

      t.timestamps
    end
  end
end
