require "./green_grocer"

cart = [{"AVOCADO" => {:price => 3.00, :clearance => true}}, {"AVOCADO" => {:price => 3.00, :clearance => true}}, {"HAM" => {:price => 3.00, :clearance => false}}]
cart2 = [{"AVOCADO" => {:price => 3.00, :clearance => true}}, {"AVOCADO" => {:price => 3.00, :clearance => true}}, {"HAM" => {:price => 3.00, :clearance => false}}]

describe "#count_cart" do
  it "should return the cart as a hash with values being hashes, each with a new key value pair that is :count" do
    expect(count_cart(cart)).to eq({"AVOCADO" => {:price => 3.00, :clearance => true, :count => 2}, "HAM" => {:price => 3.00, :clearance => false, :count => 1}})
  end
end

describe "#total_cost" do
  it "should return the total cost of the cart" do
    cart5 = {"AVOCADO" => {:price => 3.00, :clearance => true, :count => 0, :cp_price => 5.00, :cp_count => 1}, "HAM" => {:price => 3.00, :clearance => false, :count => 1}}
    expect(total_cost(cart5)).to eq(8.00)
  end
end

describe "#apply_coupon_discount" do
  it "should change prices when coupons are valid" do
    coups = [{:item=>"AVOCADO", :num=>2, :cost=>5.00}, {:item=>"BEER", :num=>2, :cost=>20.00}]
    expect(apply_coupon_discount(count_cart(cart), coups)).to eq({"AVOCADO" => {:price => 3.00, :clearance => true, :count => 0, :cp_price => 5.00, :cp_count => 1}, "HAM" => {:price => 3.00, :clearance => false, :count => 1}})
  end
end

describe "#x3_discount" do
  it "should return the discounted price with a tripled discount" do
    expect(x3_discount(2.00, 1.50)).to eq(0.50)
  end
end

describe "#clearance" do
  it "should give 20% to items on clearance" do
    cart1 = {"AVOCADO" => {:price => 3.00, :clearance => true, :count => 0, :cp_price => 5.00, :cp_count => 1}, "HAM" => {:price => 3.00, :clearance => false, :count => 1}}
    expect(clearance(cart1)).to eq({"AVOCADO" => {:price => 2.40, :clearance => true, :count => 0, :cp_price => 4.00, :cp_count => 1}, "HAM" => {:price => 3.00, :clearance => false, :count => 1}})
  end

  #  the mutated original cart test
  # it "should give 20% to items on clearance" do
  #   expect(clearance(count_cart(cart))).to eq({"AVOCADO" => {:price => 2.40, :clearance => true, :count => 2}, "HAM" => {:price => 3.00, :clearance => false, :count => 1}})
  # end

end

describe "#extra_disc?" do
  it "should return true if every item's price is less than or equal to $5" do
    cart2 = [{"AVOCADO" => {:price => 3.00, :clearance => true}}, {"AVOCADO" => {:price => 3.00, :clearance => true}}, {"HAM" => {:price => 3.00, :clearance => false}}]
    expect(extra_disc?(count_cart(cart2))).to be_true
  end
  it "should return false if one or more items is more than $5" do
    cart3 = [{"AVOCADO" => {:price => 3.00, :clearance => true}}, {"AVOCADO" => {:price => 3.00, :clearance => true}}, {"HAM" => {:price => 6.00, :clearance => false}}]
    expect(extra_disc?(count_cart(cart3))).to be_false
  end
end

describe "#checkout" do
  it "should return the total cost of the cart including all the discounts" do
    cart2 = [{"AVOCADO" => {:price => 3.00, :clearance => true}}, {"AVOCADO" => {:price => 3.00, :clearance => true}}, {"HAM" => {:price => 3.00, :clearance => false}}]
    coups = [{:item=>"AVOCADO", :num=>2, :cost=>5.00}, {:item=>"BEER", :num=>2, :cost=>20.00}]
    expect(checkout(cart2, coups)).to eq(0)
    cart3 = [{"AVOCADO" => {:price => 3.00, :clearance => true}}, {"AVOCADO" => {:price => 3.00, :clearance => true}}, {"HAM" => {:price => 6.00, :clearance => false}}]
    coups2 = [{:item=>"AVOCADO", :num=>2, :cost=>5.00}, {:item=>"AVOCADO", :num=>2, :cost=>5.00}]
    expect(checkout(cart3, coups2)).to eq(10.00)
    cart4 = [{"AVOCADO" => {:price => 3.00, :clearance => true}}, {"AVOCADO" => {:price => 3.00, :clearance => true}}, {"AVOCADO" => {:price => 3.00, :clearance => true}}, {"AVOCADO" => {:price => 3.00, :clearance => true}}, {"AVOCADO" => {:price => 3.00, :clearance => true}}, {"HAM" => {:price => 6.00, :clearance => false}}]
    expect(checkout(cart4, coups2)).to eq(13.20)
  end

end





