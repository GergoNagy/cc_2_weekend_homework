require('minitest/autorun')
require( 'minitest/reporters' )
require('pry')
Minitest::Reporters.use!( Minitest::Reporters::SpecReporter.new )
require_relative('../room.rb')
require_relative('../guest.rb')
require_relative('../song.rb')

class TestRoom < MiniTest::Test

  def setup
    @guest = Guest.new("Bob", 22)
    @guest1 = Guest.new("Greg", 13)
    @guest2 = Guest.new("Fred", 76)

    @room = Room.new(2)
  end


  def test_room_is_empty
    # @room.guests.count()
    assert_equal(@room.guests.count(), @room.how_meny_guest_in_room)
  end
  # def test_put_guest_in_the_room
  #   guests = @room.get_guest
  #   assert_equal(@guest2.name, guests.name)
  # end


end