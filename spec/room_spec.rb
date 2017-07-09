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

    @song = Song.new("Song_1")
    @song1 = Song.new("Song_2")
    @song2 = Song.new("Song_3")

    @room = Room.new(2, 21)
  end


  def test_room_is_empty
    assert_equal(@room.guests_in_room.count(), @room.how_meny_guest_in_room)
  end

  def test_guest_in_room
    @room.get_guest(@guest)
    assert_equal(true, @room.guests_in_room.include?(@guest))    
  end

  def test_guest_out_room
    @room.get_guest(@guest1)
    @room.get_guest(@guest2)
    @room.get_out_guest
    assert_equal(0, @room.guests_in_room.count)
  end

  def test_get_song_in_room
    @room.get_song_in_room(@song)
    assert_equal(true, @room.songs_in_room.include?(@song))
  end

  def test_room_capacity
    assert_equal(@room.room_capacity, @room.room_capacity)
  end


end