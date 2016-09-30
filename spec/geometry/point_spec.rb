require "spec_helper"

describe Geometry::Point do
  describe "#point_initialization" do
    it "should return point (0,0) when 0 and 0 are passed as abscissa and ordinate respectively" do
      point = Geometry::Point.new(0, 0)
      expect(point.abscissa).to eq(0)
      expect(point.ordinate).to eq(0)
    end

    it "should return point (1,5) when 1 and 5 are passed as abscissa and ordinate respectively" do
      point = Geometry::Point.new(1, 5)
      expect(point.abscissa).to eq(1)
      expect(point.ordinate).to eq(5)
    end
  end

  describe "#==" do
    it "should not be equal to nil" do
      point = Geometry::Point.new(0, 0)
      expect(point).to_not eq(nil)
    end

    it "should not be equal to any object of different type" do
      point = Geometry::Point.new(0, 0)
      sample_object = Object.new
      expect(point == sample_object).to eq(false)
    end

    context "should possess reflexive property" do
      it "should be equal to itself" do
        point = Geometry::Point.new(0, 0)
        expect(point).to eq(point)
      end
    end

    context "should possess symmetric property" do
      let(:point) { Geometry::Point.new(1, 2) }
      let(:other_point) { Geometry::Point.new(1, 2) }

      it "should be equal to other point" do
        expect(point).to eq(other_point)
      end
      it "should respond with equality when ask from other point" do
        expect(other_point).to eq(point)
      end
    end

    context "should possess transitivity property" do
      let(:point) { Geometry::Point.new(1, 2) }
      let(:other_point) { Geometry::Point.new(1, 2) }
      let(:another_point) { Geometry::Point.new(1, 2) }

      it "should be equal to other point" do
        expect(point).to eq(other_point)
      end
      it "should be equal to another point" do
        expect(point).to eq(another_point)
      end
      it "should satisfy equality for other and another point" do
        expect(other_point).to eq(another_point)
      end
    end
  end

  describe "#eql?" do
    it "should satisfy equality for point and other point when equal" do
      point = Geometry::Point.new(0, 0)
      other_point = Geometry::Point.new(0, 0)
      expect(point.eql?(other_point)).to be_truthy
    end

    it "should NOT satisfy equality for point and other point when NOT equal" do
      point = Geometry::Point.new(0, 0)
      other_point = Geometry::Point.new(0, 1)
      expect(point.eql?(other_point)).to be_falsey
    end
  end
end
