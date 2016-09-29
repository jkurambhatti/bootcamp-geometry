require "spec_helper"

describe Geometry::Point do
  describe "#point" do
    it "a point should be readable" do
      point = Geometry::Point.new(0,1)
      expect(point.x_coordinate).to eq(0)
      expect(point.y_coordinate).to eq(1)
    end
  end
end
