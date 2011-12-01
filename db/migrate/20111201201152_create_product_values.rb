class CreateProductValues < ActiveRecord::Migration
  def change
    create_table :product_values do |t|
      t.belongs_to :product, null: false
      t.belongs_to :value, null: false

      t.timestamps
    end
    add_index :product_values, :product_id
    add_index :product_values, :value_id
    add_index :product_values, [:product_id, :value_id]
  end
end
