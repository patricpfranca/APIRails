class CreateStocks < ActiveRecord::Migration[5.1]
  def change
    create_table :stocks do |t|
      t.integer :quantity
      t.integer :quantity_minimum
      t.string :location_street
      t.integer :location_block
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
