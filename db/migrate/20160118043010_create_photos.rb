class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :row_order

      t.timestamps null: false
    end
  end
end
