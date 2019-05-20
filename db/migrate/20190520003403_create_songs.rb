class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |t|
      t.string :title, null: false
      t.boolean :released, null: false
      t.integer :release_year, null: true
      t.string :artist_name, null: false
      t.string :genre, null: false
      t.timestamps
    end
  end
end
