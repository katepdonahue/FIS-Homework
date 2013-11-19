require "./sarah_blackjack.rb"

describe BlackJack do

  describe "#attr_reader" do
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
    it "should create attribute turns" do
      expect(BlackJack.new.turns.to_s).to match_regex(/^\d$/)
    end
  end

  describe "#attr_writer" do
    it "should assign the value assigned to card1 to @card1" do
      expect(card1)
    end
  end

  describe "#yes_or_no" do
    it "should return true if text is 'y'" do
      expect(yes_or_no("y")).to eq(true)
    end
    it "should return false if text is 'n'" do
      expect(yes_or_no("n")).to eq(false)
    end
    it "should return false if text is anything else" do
      expect(yes_or_no(6)).to eq(false)
    end
  end

  describe "#score" do
    
  end

  describe "#wins?" do

  end

  describe "#initial_pos" do

  end

  describe "#early_win" do

  end

  describe "#hits" do

  end

  describe "#play" do

  end
end
