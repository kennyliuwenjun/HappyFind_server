class AddColumnsToOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :user_name, :text
    add_column :orders, :user_email, :text
    add_column :orders, :user_phone, :text
    add_column :orders, :user_address, :text
    add_column :orders, :payment_status, :integer
  end
end
