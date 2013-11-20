require_relative "../square_arrays_solution"

describe "#square_array" do
  it "should return the squares of all elements in the array" do
    expect(square_array([2, 3, 4, 7])).to eq([4, 9, 16, 49])
  end
end