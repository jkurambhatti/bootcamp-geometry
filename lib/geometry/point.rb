class Geometry::Point
  attr_reader :point

  def initialize(abscissa, ordinate)
    @point = { 'abscissa' => abscissa, 'ordinate' => ordinate}
  end

  private

  attr_writer :point
end
