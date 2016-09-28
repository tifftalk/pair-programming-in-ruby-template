class Square
  attr_accessor :sides

  def initialize(sides)
    @sides = sides
  end

  def valid?
    # return sides[0] == sides[1] && sides[2] == sides[3] && sides[0] == sides[2]
    sides.uniq.length == 1
  end
end
