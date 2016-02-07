class AddAboutOrderToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :about_order, :integer
  end
end
