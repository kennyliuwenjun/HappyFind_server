class FixColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :suppliers, :lat, :latitude
    rename_column :suppliers, :lng, :longitude
  end
end
