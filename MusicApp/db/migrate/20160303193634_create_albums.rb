class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :title, null: false
      t.string :band, null: false
      t.integer :band_id, null: false
      t.string :recorded, null:false

      t.timestamps
    end
  end
end
