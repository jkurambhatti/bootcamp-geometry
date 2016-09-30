class Geometry::Point
  attr_reader :abscissa, :ordinate

  def initialize(abscissa, ordinate)
    @abscissa = abscissa
    @ordinate = ordinate
  end

  def ==(point_2)
    if point_2 == nil || point_2.class != Geometry::Point
      false
    elsif self.abscissa == point_2.abscissa && self.ordinate == point_2.ordinate
      true
    end
  end

  private

  attr_writer :abscissa, :ordinate
end
