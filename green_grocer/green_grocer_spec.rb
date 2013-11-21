require "./green_grocer"

describe "#count_cart" do
  it "should sum the number of each item-hash in the cart and add the sum as a value to the key :count in that hash" do
    expect(count_cart(add_counter([ {"AVOCADO" => {:price => 3.00, :clearance => true}}, {"AVOCADO" => {:price => 3.00, :clearance => true}}]))).to eq([{"AVOCADO" => {:price => 3.00, :clearance => true}, :count => 2}])
  end
end

# For example if your cart was [  {"AVOCADO" => {:price => 3.00, :clearance => true}}, {"AVOCADO" => {:price => 3.00, :clearance => true}}]
#   it would become {"AVOCADO" => {:price => 3.00, :clearance => true}, :count => 2}



# For example if your cart was [  {"AVOCADO" => {:price => 3.00, :clearance => true}}, {"AVOCADO" => {:price => 3.00, :clearance => true}}, {"HAM" => {:price => 3.00, :clearance => true}}]
#   it would become [{"AVOCADO" => {:price => 3.00, :clearance => true}, :count => 2}, {"HAM" => {:price => 3.00, :clearance => true}, :count => 1}]