require "spec_helper"

describe Geometry::Linesegment do
  describe "#length_between_2_points" do
    it "should return 0 given (0,0) and (0,0)" do
      length = Geometry::Linesegment.new([0,0], [0,0])
      expect(length.length_between_2_points).to eq(0)
    end
  end
end
