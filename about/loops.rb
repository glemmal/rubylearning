describe "loops" do
	it "Tests the while" do
		i = 0
		while i < 5 do
			i += 2
			puts i
		end
		expect(i).to eq(6)
	end
end


