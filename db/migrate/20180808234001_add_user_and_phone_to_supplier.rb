class AddUserAndPhoneToSupplier < ActiveRecord::Migration[5.2]
  def change
    add_column :suppliers, :isSupplier, :boolean
    add_column :suppliers, :phone, :text
  end
end
