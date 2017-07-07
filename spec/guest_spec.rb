require('minitest/autorun')
require( 'minitest/reporters' )
require('pry')
Minitest::Reporters.use!( Minitest::Reporters::SpecReporter.new )
require_relative('../guest.rb')

class TestGuest < MiniTest::Test

  def setup
    @guest = Guest.new("Bob", 22)
    @guest1 = Guest.new("Greg", 13)
    @guest2 = Guest.new("Fred", 76)
  end

  def guest_has_name_and_money
    assert_equal("Bob", @guest.name)
    a = assert_equal(22, @guest.money)
  end


end