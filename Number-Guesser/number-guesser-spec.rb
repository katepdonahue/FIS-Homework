require './number-guesser'

number = 70

describe "#number-guesser" do
  it "returns true if the guess is correct" do
    number_guesser(70).should eq(true)
  end
  it "returns false if the guess is incorrect" do
    number_guesser(12).should eq(false)
  end
end
