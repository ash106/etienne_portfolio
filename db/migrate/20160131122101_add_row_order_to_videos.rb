class AddRowOrderToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :row_order, :integer
  end
end
