class Room

  attr_reader :guests_in_room, :songs_in_room, :size_of_the_room, :price_of_the_room

  def initialize(size_of_the_room, price_of_the_room)
    @guests_in_room = []
    @songs_in_room = []
    @size_of_the_room = size_of_the_room
    @price_of_the_room = price_of_the_room
  end

  def how_many_guest_in_room
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

  def room_capacity
    if @size_of_the_room.to_i > @guests_in_room.count()
      return "We have more space in the room"
    else
      return "Sorry we are full!"
    end
  end




end