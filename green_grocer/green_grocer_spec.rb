require "./green_grocer"

cart = [{"AVOCADO" => {:price => 3.00, :clearance => true}}, {"AVOCADO" => {:price => 3.00, :clearance => true}}, {"HAM" => {:price => 3.00, :clearance => true}}]

describe "#count_cart" do
  it "should return the cart as a hash with values being hashes, each with a new key value pair that is :count" do
    expect(count_cart(cart)).to eq("AVOCADO" => {:price => 3.00, :clearance => true, :count => 2}, "HAM" => {:price => 3.00, :clearance => true, :count => 1})
  end
end

describe "#total_cost" do
  it "should return the total cost of the cart without discounts" do
    expect(total_cost(count_cart(cart))).to eq(9.00)
  end
end

describe "#apply_coupon_discount" do
  it "should change prices when coupons are valid" do
    coups = [{:item=>"AVOCADO", :num=>2, :cost=>5.00}, {:item=>"BEER", :num=>2, :cost=>20.00}]
    expect(apply_coupon_discount(count_cart(cart), coups)).to eq({"AVOCADO" => {:price => 2.50, :clearance => true, :count => 2}, "HAM" => {:price => 3.00, :clearance => true, :count => 1}})
  end
end

describe "#x3_discount" do
  it "should return the discounted price with a tripled discount" do
    expect(x3_discount(2.00, 1.50)).to eq(0.50)
  end
end

# describe "#price_disc" do
#   it "should return the difference between the price and the discount price" do
#     expect(price_disc(3.00, 2.00)).to eq(1.00)
#   end

# describe "#clearance" do
#   it "should check if an item is on clearance"

