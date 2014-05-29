json.array!(@rapper_songs) do |rapper_song|
  json.extract! rapper_song, :id, :rapper, :song
  json.url rapper_song_url(rapper_song, format: :json)
end
