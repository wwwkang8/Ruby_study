require_relative 'roman'
require 'test/unit'

class TestRoman3 < Test::Unit::TestCase

  def test_range
    assert_raise(RuntimeError) {Roman.new(0)}
    assert_nothing_raised() {Roman.new(1)}
    assert_nothing_raised() {Roman.new(4999)}
    assert_raise(RuntimeError) {Roman.new(5000)}
  end
end