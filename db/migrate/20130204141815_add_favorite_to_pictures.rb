class AddFavoriteToPictures < ActiveRecord::Migration
  def change
    add_column :pictures, :favorite, :boolean
  end
end
