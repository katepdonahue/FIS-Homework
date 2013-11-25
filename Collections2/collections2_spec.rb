require "./collections2"

describe "#starts_w_r" do
  it "should return true if every element of the array starts with an r" do
    expect(starts_w_r(["ruby", "rspec", "rails"])).to be_true
  end
  it "should return false if one or more elements of the array doesn't start with an r" do
    expect(starts_w_r(["ruby", "spec", "rails"])).to be_false
  end
end

describe "#contains_a" do
  it "should return an array with all the elements that contain a" do
    expect(contains_a(["earth", "fire", "wind", "water", "heart"])).to eq(["earth", "water", "heart"])
  end
end

describe "#first_wa" do
  it "should identify the first element in the array that begins with the letters 'wa'" do
    expect(first_wa(["candy", :wapper, "wall", :ball, "wacky"])).to eq(:wapper)
  end
end

describe "#all_wa" do
  it "should identify all the elements in the array that begin with the letters 'wa'" do
    expect(all_wa(["candy", :wapper, "wall", :ball, "wacky"])).to eq([:wapper, "wall", "wacky"])
  end
end

describe "#only_s" do
  it "should remove anything that's not a string from an array" do
    expect(only_s(["candy", :wapper, "wall", :ball, 5])).to eq(["candy", "wall"])
  end
end

describe "#third_letter" do
  it "should change the third letter of all strings in an array" do
    expect(third_letter(["candy", :wapper, "wall", :ball, 5], "$")).to eq(["ca$dy", :wapper, "wa$l", :ball, 5])
  end
end

