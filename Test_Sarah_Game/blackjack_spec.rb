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

  # describe "#attr_writer" do
  #   it "should assign the value assigned to card1 to @card1" do
  #     expect(card1)
  #   end
  # end

  describe "#yes_or_no" do
    it "should return true if text is 'y'" do
      expect(BlackJack.new.yes_or_no("y")).to be_true
    end
    it "should return false if text is 'n'" do
      expect(BlackJack.new.yes_or_no("n")).to be_false
    end
    it "should return false if text is anything else" do
      expect(BlackJack.new.yes_or_no(6)).to be_false
    end
  end

  # describe "#score" do

  # end

  describe "#wins?" do
    it "should return true or false" do
      expect(BlackJack.new.wins?).to (Boolean).is_a_matcher? be_true
  end

  # describe "#initial_pos" do

  # end

  # describe "#early_win" do

  # end

  # describe "#hits" do
  #   it "should increment turns by 1 when text is 'hit'" do
  #     expect(BlackJack.new.hits("hit")).to 
  #   end
  #   it "should not increment turns when text is 'stay'" do
  #   end
  #   it "should not increment turns when text is anything else" do
  #   end
  # end

  # describe "#play" do

  # end
end
end
