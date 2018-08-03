class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :service_id
      t.date :date
      t.float :hours

      t.timestamps
    end
  end
end
