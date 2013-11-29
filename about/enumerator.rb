describe "enumerators" do

	it "map returns math iteration array" do
		result = (1..4).map do |element|
			element+2
		end
		expect(result).to eq [3,4,5,6]
	end

	it "inject sums an array" do
		result = (4..8).inject {|sum, n | sum + n}
		expect(result). to eq 30
	end

end