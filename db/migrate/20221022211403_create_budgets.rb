class CreateBudgets < ActiveRecord::Migration[7.0]
  def change
    create_table :budgets do |t|
      t.references :business, null: false, foreign_key: true
      t.string :name
      t.date :date
      t.integer :balance
      t.string :currency, default: 'COP'
      t.text :note

      t.timestamps
    end
  end
end
