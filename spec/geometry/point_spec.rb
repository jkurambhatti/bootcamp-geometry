require "spec_helper"

# describe Geometry::Linesegment do
#   describe "#length_between_2_points" do
#     it "should return 0 given (0,0) and (0,0)" do
#       length = Geometry::Linesegment.new([0,0], [0,0])
#       expect(length.length_between_2_points).to eq(0)
#     end
#
#     it "should return 3 given (1,3) and (1,0)" do
#       length = Geometry::Linesegment.new([1,3], [1,0])
#       expect(length.length_between_2_points).to eq(3)
#     end
#
#     it "should return 5 given (-1,4) and (2,0)" do
#       length = Geometry::Linesegment.new([-1,4], [2,0])
#       expect(length.length_between_2_points).to eq(5)
#     end
#
#   end
# end

describe Geometry::Point do
  describe "#point_initialization" do
    it "should return point (0,0) when 0 and 0 are passed as abscissa and ordinate respectively" do
      point = Geometry::Point.new(0,0)
      expect(point.point['abscissa']).to eq(0)
      expect(point.point['ordinate']).to eq(0)
    end
  end
end
