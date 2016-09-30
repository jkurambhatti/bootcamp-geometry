class Geometry::Point
  attr_reader :abscissa, :ordinate

  def initialize(abscissa, ordinate)
    @abscissa = abscissa
    @ordinate = ordinate
  end

  def compare_2_points(point_2)
    if self.abscissa == point_2.abscissa && self.ordinate == point_2.ordinate
      true
    else
      false
    end
  end

  private

  attr_writer :abscissa, :ordinate
end
