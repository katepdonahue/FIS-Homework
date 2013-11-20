require_relative "../max_solution"

describe "#maximum" do
  it "should return the largest element of an array" do
    expect(maximum([1, 2, 9, 5])).to eq(9)
  end
end