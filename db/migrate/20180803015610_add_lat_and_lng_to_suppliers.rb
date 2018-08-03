class AddLatAndLngToSuppliers < ActiveRecord::Migration[5.2]
  def change
    add_column :suppliers, :lat, :float
    add_column :suppliers, :lng, :float
  end
end
