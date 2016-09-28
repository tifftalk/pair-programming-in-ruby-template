require "minitest/autorun"
require "minitest/reporters"
require "./lib/square"
Minitest::Reporters.use!

class TestSquare < Minitest::Test
  def setup
  end

  def test_has_four_sides
    square = Square.new([2,2,2,2])
    assert_equal 4, square.sides.length
  end

  def test_valid
    # invalid square
    invalid_square = Square.new([2,3,3,3])
    assert !invalid_square.valid?, "invalid square was detected as valid"

    # valid square
    valid_square = Square.new([2,2,2,2])
    assert valid_square.valid?, "valid square was detected as invalid"
  end
end
