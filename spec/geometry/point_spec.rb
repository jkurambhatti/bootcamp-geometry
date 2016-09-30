require "spec_helper"

describe Geometry::Point do
  describe ".new" do
    it "should create new instance with given abscissa and ordinate" do
      point = Geometry::Point.new(0, 0)
      expect(point.abscissa).to eq(0)
      expect(point.ordinate).to eq(0)
    end

    it "should raise ArgumentError when one or more arguments are absent" do
      expect {
        Geometry::Point.new(5)
      }.to raise_error(ArgumentError)

      expect {
        Geometry::Point.new
      }.to raise_error(ArgumentError)
    end
  end

  context "Equality" do
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

    describe "#hash" do
      it "should generate same hash for point and other point when equal" do
        point = Geometry::Point.new(0, 0)
        other_point = Geometry::Point.new(0, 0)
        expect(point.hash).to eq(other_point.hash)
      end

      it "should generate different hash for point and other point when NOT equal" do
        point = Geometry::Point.new(0, 0)
        other_point = Geometry::Point.new(0, 1)
        expect(point.hash).to_not eq(other_point.hash)
      end
    end
  end
 end
