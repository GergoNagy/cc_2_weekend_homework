class Room

  attr_reader :guests

  def initialize(size_of_the_room)
    @guests = []
    @size_of_the_room = size_of_the_room
  end

  def how_meny_guest_in_room
    @guests.size
  end

  # def get_guest
  #   @guests << @guest
  # end


end