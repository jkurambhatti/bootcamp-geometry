class Geometry::Linesegment
  attr_reader :point_1, :point_2

  def initialize(x, y)
    @point_1 = x
    @point_2 = y
  end

  def length_between_2_points
    0
  end

  private
  attr_writer :x_coordinate, :y_coordinate
end
