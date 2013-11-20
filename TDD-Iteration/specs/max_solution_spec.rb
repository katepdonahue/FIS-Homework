require_relative "../max_solution"

# describe "#maximum" do
#   it "should return the largest element of an array" do
#     expect(maximum([1, 2, 9, 5])).to eq(9)
#   end

# end

describe Array do
  describe "#maximum" do
    it "should return the largest element of an array" do
      expect([1, 2, 9, 5].maximum).to eq(9)
    end
  end

end