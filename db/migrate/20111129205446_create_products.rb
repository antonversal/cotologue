class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.belongs_to :section

      t.timestamps
    end
  end
end
