require "./sarah_blackjack.rb"

describe BlackJack do

  describe "#initialize" do
    it "should create attributes card1 - card4" do
      expect(BlackJack.new.card1.to_s).to match_regex(/^[1-9]$|^[1][0-1]$/)
    end
  end

  # describe "#yes_or_no" do
  # end

  # describe "#hits" do
  # end

  # describe "#play" do
  # end

end
