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
    it "should return true when the point is compared to itself (Reflexive property)" do
      point = Geometry::Point.new(0,0)
      expect(point == point).to eq(true)
    end

    it "should return false when the point is compared to nil (Type Checking)" do
      point = Geometry::Point.new(0,0)
      expect(point == nil).to eq(false)
    end

    it "should return false when the point is compared to a different object type (Type Checking)" do
      point = Geometry::Point.new(0,0)
      sample_object = "ABC"
      expect(point == sample_object).to eq(false)
    end

    it "should return true when the points compared are equal (Symmetric property)" do
      point_1 = Geometry::Point.new(1,2)
      point_2 = Geometry::Point.new(1,2)
      expect(point_1 == point_2 && point_2 == point_1).to eq(true)
    end

    it "should return false when compared with nil (Symmetric property)" do
      point_1 = Geometry::Point.new(1,2)
      point_2 = nil
      expect(point_1 == point_2 && point_2 == point_1).to eq(false)
    end

    it "should return false when compared with different object (Symmetric property)" do
      point_1 = Geometry::Point.new(1,2)
      point_2 = "ABC"
      expect(point_1 == point_2 && point_2 == point_1).to eq(false)
    end

    it "should return true when the 3 points are compared to themselves in pairs (Transitive property)" do
      point_1 = Geometry::Point.new(1,2)
      point_2 = Geometry::Point.new(1,2)
      point_3 = Geometry::Point.new(1,2)
      expect(point_1 == point_2 && point_2 == point_3 && point_3 == point_1).to eq(true)
    end
  end
end
