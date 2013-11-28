describe "Hashes" do 

	it "test the value on a key" do
		
		firstHash = {"2hoch2" => 4, "2hoch3" => 8, "2hoch4" => 16, "2hoch5" => 32}

		expect(firstHash["2hoch2"]).to eq 4
		expect(firstHash["2hoch3"]).to eq 8
		expect(firstHash["2hoch4"]).to eq 16
		expect(firstHash["2hoch5"]).to eq 32
	end

	it "should add new value to hash" do

		secondHash = {}

		expect(secondHash.length).to eq 0

		secondHash["hallo"] = 89438743284

		expect(secondHash.length).to eq 1
		
		secondHash["harry"] = 92147938

		expect(secondHash.length).to eq 3
	end

	it ""


end