class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.text :description
      t.belongs_to :section

      t.timestamps
    end

    add_index :products, :section_id

  end
end
