require_relative('./song.rb')
require_relative('./room.rb')
require_relative('./guest.rb')

song = Song.new("Song_1")
room = Room.new(2)
puts song.get_song_in_room