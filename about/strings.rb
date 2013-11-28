describe "A Ruby String" do
  it "returns same value" do
    x = "foo"
    expect(x).to eq "foo"
    expect(x).not_to eq "bar"
  end

  it "reverses string" do
    x = "foo".reverse
    expect(x).to eq "oof"
  end

  it "returns fifth character" do
    x = "foobar"
    expect(x[5]).to eq "r"
  end

  it "returns string 6 times" do
    x = "foo"
    5.times do
      x += "foo"
    end
    expect(x).to eq "foofoofoofoofoofoo"
  end

  it "returns string in uppercase letters" do
    x = "foo".upcase
    expect(x).to eq "FOO"
  end
end