require "spec_helper"

describe Geometry::Point do
  describe "#point" do
    it "a point should be readable" do
      point = Geometry::Point.new(0,1)
      expect(point.x_coordinate).to eq(0)
      expect(point.y_coordinate).to eq(1)
    end

    it "a point should not be writable and raises NoMethodError" do
      point = Geometry::Point.new(2,3)
      expect{
        point.x_coordinate = 5
        point.y_coordinate = 6
      }.to raise_error(NoMethodError)
      expect(point.x_coordinate).to eq(2)
      expect(point.y_coordinate).to eq(3)
    end
  end
end
