class Geometry::Linesegment
  attr_reader :point_1, :point_2

  def initialize(x, y)
    @point_1 = x
    @point_2 = y
  end

  def length_between_2_points
    if @point_1 == 0 && @point_2 == 0
      0
    else
      Math.sqrt( ((@point_2[1] - @point_1[1]) ** 2).abs + ((@point_2[0] - @point_1[0]) ** 2).abs )
    end
  end

  private
  attr_writer :x_coordinate, :y_coordinate
end
