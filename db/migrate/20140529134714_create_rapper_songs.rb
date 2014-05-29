class CreateRapperSongs < ActiveRecord::Migration
  def change
    create_table :rapper_songs do |t|
      t.references :rapper, index: true
      t.references :song, index: true

      t.timestamps
    end
  end
end
