class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :brand
      t.string :description
      t.boolean :active
      t.decimal :amount

      t.timestamps
    end
  end
end
