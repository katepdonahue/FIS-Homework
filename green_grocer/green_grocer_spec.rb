require "./green_grocer"

cart = [{"AVOCADO" => {:price => 3.00, :clearance => true}}, {"AVOCADO" => {:price => 3.00, :clearance => true}}, {"HAM" => {:price => 3.00, :clearance => true}}]

describe "#count_cart" do
  it "should return the cart as a hash with values being hashes, each with a new key value pair that is :count" do
    expect(count_cart(cart)).to eq("AVOCADO" => {:price => 3.00, :clearance => true, :count => 2}, "HAM" => {:price => 3.00, :clearance => true, :count => 1})
  end
end

describe "#cost_pre_discounts" do
  it "should return the total cost of the cart without discounts" do
    expect(cost_pre_discounts(count_cart(cart))).to eq(9.00)
  end
end

describe "#apply_coupon_discount" do
  it "should change prices when coupons are valid" do
    expect(apply_coupon_discount(count_cart(cart))).to eq(8.00)
  end
end

# describe "#add_counter" do
#   it "should add a :count key with a 0 value to each item hash in the cart array" do
#     expect(add_counter(cart)).to eq([{"AVOCADO" => {:price => 3.00, :clearance => true}, :count => 1}, {"AVOCADO" => {:price => 3.00, :clearance => true}, :count => 1}, {"HAM" => {:price => 3.00, :clearance => true}, :count => 1}])
#   end
# end

# describe "#count_cart" do
#   it "should sum the number of each item-hash in the cart and add the sum as a value to the key :count in that hash" do
#     expect(count_cart(cart)).to eq([{"AVOCADO" => {:price => 3.00, :clearance => true}, :count => 2}, {"HAM" => {:price => 3.00, :clearance => true}, :count => 1}])
#   end
# end

