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
    expect(x[4]).to eq "a"
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

  it "returns string in lowercase letters" do
    x = "FOO".downcase
    expect(x).to eq "foo"
  end

  it "comparison of two strings - right string has less characters" do
      x = "abcdef" <=> "abcde"
      expect(x).to eq 1
  end

  it "comparison of strings with no differences" do
    x = "abcdef" <=> "abcdef"
    expect(x).to eq 0
  end

  it "comparison of two strings - right string has more characters" do
    x = "abcde" <=> "abcdefg" 
    expect(x).to eq -1
  end

end