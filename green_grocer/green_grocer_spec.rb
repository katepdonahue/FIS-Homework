require "./green_grocer"

describe "#checkout" do
  it "should sum the number of each item" do
    expect(checkout(["AVOCADO", "KALE", "AVOCADO"])).to eq(["AVOCADO", "KALE"])
  end
end