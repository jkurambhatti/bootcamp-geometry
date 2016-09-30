class Geometry::Point
  attr_reader :abscissa, :ordinate

  def initialize(abscissa, ordinate)
    @abscissa = abscissa
    @ordinate = ordinate
  end

  def ==(other)
    if self.class != other.class
      false
    else
      self.abscissa == other.abscissa && self.ordinate == other.ordinate
    end
  end

  private

  attr_writer :abscissa, :ordinate
end
