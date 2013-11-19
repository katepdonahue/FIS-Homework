require "./sarah_blackjack.rb"

describe BlackJack do

  describe "#initialize" do
    it "should create attribute card1" do
      expect(BlackJack.new.card1.to_s).to match_regex(/^[1-9]$|^[1][0-1]$/)
    end
    it "should create attribute card2" do
      expect(BlackJack.new.card2.to_s).to match_regex(/^[1-9]$|^[1][0-1]$/)
    end
    it "should create attribute card3" do
      expect(BlackJack.new.card3.to_s).to match_regex(/^[1-9]$|^[1][0-1]$/)
    end
    it "should create attribute card4" do
      expect(BlackJack.new.card4.to_s).to match_regex(/^[1-9]$|^[1][0-1]$/)
    end
    it "should create attribute score" do
      expect(BlackJack.new.score.to_s).to match_regex(/^[0]$/)
    end
  end

  # describe "#yes_or_no" do
  # end

  # describe "#hits" do
  # end

  # describe "#play" do
  # end

end
