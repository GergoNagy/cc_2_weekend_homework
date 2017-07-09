require_relative('./song.rb')
require_relative('./room.rb')
require_relative('./guest.rb')

@guest = Guest.new("Bob", 22)
@guest1 = Guest.new("Greg", 13)
@guest2 = Guest.new("Fred", 76)

@room = Room.new(2, 21)

@room.get_guest(@guest)
@room.get_guest(@guest1)
puts @room.room_capacity

puts "\n"

puts "It is #{@room.how_many_guest_in_room} people in the room."

puts @room.guest_can_pay




