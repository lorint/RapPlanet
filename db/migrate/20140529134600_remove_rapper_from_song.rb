class RemoveRapperFromSong < ActiveRecord::Migration
  def change
    remove_reference :songs, :rapper, index: true
  end
end
