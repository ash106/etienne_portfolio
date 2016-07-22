class ChangeRowOrderToAboutOrder < ActiveRecord::Migration
  def change
    rename_column :photos, :row_order, :about_order
  end
end
