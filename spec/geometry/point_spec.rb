require "spec_helper"

describe Geometry::Point do
  describe "#point_initialization" do
    it "should return point (0,0) when 0 and 0 are passed as abscissa and ordinate respectively" do
      point = Geometry::Point.new(0,0)
      expect(point.abscissa).to eq(0)
      expect(point.ordinate).to eq(0)
    end

    it "should return point (1,5) when 1 and 5 are passed as abscissa and ordinate respectively" do
      point = Geometry::Point.new(1,5)
      expect(point.abscissa).to eq(1)
      expect(point.ordinate).to eq(5)
    end
  end

  describe "#compare_2_points" do
    it "should return true when Point-1 (0,0) and Point-2 (0,0) are passed" do
      point_1 = Geometry::Point.new(0,0)
      point_2 = Geometry::Point.new(0,0)
      expect(point_1.compare_2_points(point_2)).to eq(true)
    end

    it "should return false when Point-1 (1,2) and Point-2 (3,4) are passed" do
      point_1 = Geometry::Point.new(1,2)
      point_2 = Geometry::Point.new(3,4)
      expect(point_1.compare_2_points(point_2)).to eq(false)
    end

    it "should return false when Point-1 (1,2) and Point-2 (1,4) are passed" do
      point_1 = Geometry::Point.new(1,2)
      point_2 = Geometry::Point.new(1,4)
      expect(point_1.compare_2_points(point_2)).to eq(false)
    end

    it "should return false when Point-1 (1,4) and Point-2 (3,4) are passed" do
      point_1 = Geometry::Point.new(1,4)
      point_2 = Geometry::Point.new(3,4)
      expect(point_1.compare_2_points(point_2)).to eq(false)
    end
  end
end
