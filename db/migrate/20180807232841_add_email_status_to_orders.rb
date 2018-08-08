class AddEmailStatusToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :mail_cust, :boolean
    add_column :orders, :mail_supp, :boolean
  end
end
