describe "Ruby Comparision Operators" do
  context "== and equal? work the other way around compared to java!" do
    it "equal? checks for object identity" do
      # this is always false as strings are mutable and thus cannot be interned
      # as in java.
      expect("hallo".equal?("hallo")).to be_false
      # therefore, use symbols where appropriate - there's only one instance.
      expect(:hallo.equal?(:hallo)).to be_true
      expect(3.equal?(3)).to be_true
    end
    it "== checks for equal value" do
      expect("hallo" == "hallo").to be_true
      expect(5 == 5).to be_true
      expect(3.0 == 3).to be_true
    end
  end
  context "then there are a couple of other comparision operators" do
    it "e.g. eql? checks for equal value & type" do
      expect(5.eql?(5)).to be_true
      expect(5.eql?(5.0)).to be_false
    end
  end
end

