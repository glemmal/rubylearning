describe "a method returns" do
  def a_method(a)
    a + 3
  end
  it "the value of the last expression" do
    expect(a_method(2)).to eq(5)
  end
end
