class ChangeAboutOrderToSkiingOrder < ActiveRecord::Migration
  def change
    rename_column :photos, :about_order, :skiing_order
  end
end
