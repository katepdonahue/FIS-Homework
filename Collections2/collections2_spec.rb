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
    expect(third_letter(["candy", "wa", :wapper, "wall", :ball, 5], "$")).to eq(["ca$dy", "wa", :wapper, "wa$l", :ball, 5])
  end
end

describe "#count_words" do
  it "should count the number of times each word appears in a string and store that data in a hash that has the word as the key and the count as the value" do
    expect(count_words("Hello my name is is my name.")).to eq({"hello" => 1, "my" => 2, "name" => 2, "is" => 2})
  end
end

describe "#count_hash" do
  it "should count the number of times each hash appears in an array and store that data in a key value pair in the hash" do
    expect(count_hash([{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}])).to eq([{:name => "blake", :count => 2}, {:name => "ashley", :count => 1}])
  end
end





