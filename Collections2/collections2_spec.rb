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

describe "#merge" do
  it "should take two arrays of hashes and merge the first names and last names into a new array of hashes where each hash has all information about itself" do
    array1 = [{:first_name => "blake"}, {:first_name => "ashley"}]
    array2 = [{"blake" => {:awesomeness => 10, :height => "74", :last_name => "johnson"},"ashley" => {:awesomeness => 9, :height => 60, :last_name => "dubs"}}]
    array3 = [{:first_name => "blake", :awesomeness => 10, :height => "74", :last_name => "johnson"}, {:first_name => "ashley", :awesomeness => 9, :height => 60, :last_name => "dubs"}]
    expect(merge(array1, array2)).to eq(array3)
  end
end

describe "#pull_hash" do
  it "should return all hashes that have a value of 'cool' for the :temperature key." do
  array = [{:name => "ashley", :temperature => "sort of cool"}, {:name => "blake", :temperature => "cool"}]
    expect(pull_hash(array, :temperature, "cool")).to eq([{:name => "blake", :temperature => "cool"}])
  end
end
describe "#hash_by_location" do
  it "should return the nested hashes organized alphabetically by location" do
    hash = {"flatiron school bk" => {:location => "NYC", :price => "free"}, "dev boot camp" => {:location => "SF", :price => "a million dollars"}, "dev boot camp chicago" => {:location => "Chicago", :price => "half a million dollars"}, "general assembly" => {:location => "NYC", :price => "too much"}, "some school in SF" => {:location => "SF", :price => "your soul"}}
    alt_hash = {"dev boot camp chicago" => {:location => "Chicago", :price => "half a million dollars"}, "flatiron school bk" => {:location => "NYC", :price => "free"}, "general assembly" => {:location => "NYC", :price => "too much"}, "dev boot camp" => {:location => "SF", :price => "a million dollars"}, "some school in SF" => {:location => "SF", :price => "your soul"}}
    expect(hash_by_location(hash)).to eq(alt_hash)
  end
end




