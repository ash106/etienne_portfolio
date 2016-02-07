class AddPhotosOrderToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :photos_order, :integer
  end
end
