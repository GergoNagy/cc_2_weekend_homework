class Room

  attr_reader :guests_in_room, :songs_in_room

  def initialize(size_of_the_room)
    @guests_in_room = []
    @songs_in_room = []
    @size_of_the_room = size_of_the_room
  end

  def how_meny_guest_in_room
    @guests_in_room.size
  end

  def get_guest(guest)
    @guests_in_room << guest      
  end

  def get_out_guest
    @guests_in_room.clear
  end

  def get_song_in_room(song)
    @songs_in_room << song
  end


end