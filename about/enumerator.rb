describe "enumerators" do

	it "map applies a given block to each element" do
		result = (1..4).map do |element|
			element+2
		end
		expect(result).to eq [3,4,5,6]
	end

	it "inject combines all elements by applying a block " do
		result = (4..8).inject {|sum, n | sum + n}
		expect(result). to eq 30
	end

end
