class Geometry::Point
  attr_reader :x_coordinate, :y_coordinate

  def initialize(x, y)
    @x_coordinate = x
    @y_coordinate = y
  end
end
