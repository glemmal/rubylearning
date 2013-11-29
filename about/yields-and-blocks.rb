describe "Yields and Blocks" do
  it "returns value given in block" do
    x = ""
    def test(&block)
      block.call
    end
    test { x = "foo" }
    expect(x).to eq "foo"
  end

  it "returns correct yield number" do
    a = Array.new
    def test
      yield 50
      yield 100
    end
    test {|i| a.push "#{i}"}
    expect(a[0]).to eq "50"
    expect(a[1]).to eq "100"
  end
end