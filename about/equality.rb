#WS2014 add === and case

describe "Ruby Comparision Operators" do
  context "== and equal? work the other way around compared to java!" do
    it "equal? checks for object identity" do
      # this is always false as strings are mutable and thus cannot be interned
      # as in java.
      expect("hallo".equal?("hallo")).to eq(false)
      # therefore, use type symbol where appropriate - there's only one instance.
      expect(:hallo.equal?(:hallo)).to eq(true)
      expect(3.equal?(3)).to eq(true)
    end
    it "== checks for equal value" do
      expect("hallo" == "hallo").to eq(true)
      expect(5 == 5).to eq(true)
      expect(3.0 == 3).to eq(true)
    end
  end
  context "then there are a couple of other comparision operators" do
    it "e.g. eql? checks for equal value & type" do
      expect(5.eql?(5)).to eq(true)
      expect(5.eql?(5.0)).to eq(false)
    end
  end
end

