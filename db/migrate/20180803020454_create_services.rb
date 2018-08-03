class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.integer :supplier_id
      t.integer :skill_category_id
      t.decimal :price, :precision => 8, :scale => 2

      t.index [:supplier_id, :skill_category_id]
      t.timestamps
    end
  end
end
