class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :title, null: false
      t.string :album, null: false
      t.integer :album_id, null: false

      t.timestamps
    end
  end
end
