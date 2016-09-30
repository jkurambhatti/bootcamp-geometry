class Geometry::Point
  attr_reader :abscissa, :ordinate

  def initialize(abscissa, ordinate)
    @abscissa = abscissa
    @ordinate = ordinate
  end

  def ==(point_2)
    true
  end

  private

  attr_writer :abscissa, :ordinate
end
