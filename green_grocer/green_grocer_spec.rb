require "./green_grocer"

describe "#count_cart" do
  it "should sum the number of each item in the cart and return a hash with the numbers" do
    expect(count_cart(["AVOCADO", "KALE", "AVOCADO"])).to eq({"AVOCADO" => 2, "KALE" => 1})
  end
end