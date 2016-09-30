class Geometry::Point
  attr_reader :abscissa, :ordinate

  def initialize(abscissa, ordinate)
    @abscissa = abscissa
    @ordinate = ordinate
  end

  def ==(other)
    if !other.instance_of?(self.class)
      false
    elsif self.equal?(other)
      true
    else
      self.abscissa == other.abscissa && self.ordinate == other.ordinate
    end
  end

  alias :eql? :==
end
