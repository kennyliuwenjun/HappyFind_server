class CreateSuppliers < ActiveRecord::Migration[5.2]
  def change
    create_table :suppliers do |t|
      t.text :email
      t.text :password_digest
      t.string :name

      t.timestamps
    end
  end
end
