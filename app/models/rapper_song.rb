class RapperSong < ActiveRecord::Base
  belongs_to :rapper
  belongs_to :song
end
