require 'test_helper'
 
class ActAsSampleTest < ActiveSupport::TestCase
	def test_a_hickwalls_sample_text_field_should_be_last_squawk
    assert_equal "last_squawk", Hickwall.sample_text_field
  end
 
  def test_a_wickwalls_yaffle_text_field_should_be_last_tweet
    assert_equal "last_tweet", Wickwall.sample_text_field
  end

  def test_hickwalls_squawk_should_populate_last_squawk
    hickwall = Hickwall.new
    hickwall.hello("Hello World")
    assert_equal "squawk! Hello World", hickwall.last_squawk
  end
 
  def test_wickwalls_squawk_should_populate_last_tweet
    wickwall = Wickwall.new
    wickwall.hello("Hello World")
    assert_equal "squawk! Hello World", wickwall.last_tweet
  end

end