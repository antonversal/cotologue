class CreateValues < ActiveRecord::Migration
  def change
    create_table :values do |t|
      t.string :name, null: false
      t.belongs_to :filter, null: false

      t.timestamps
    end
    add_index :values, :filter_id
  end
end
