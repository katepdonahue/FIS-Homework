require './pokemon_class'

pokemon1 = Pokemon.new("Litwick")

describe Pokemon do

  describe "#attr_reader" do
    it "should have a method name that can access @name" do
      expect(pokemon1.name).to eq("Litwick")
    end
  end

  describe "#say_name" do
    it "should return the pokemon's name with an exclamation point" do
      expect(pokemon1.say_name).to eq("Litwick!")
    end
  end

end