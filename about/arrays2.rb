
describe 'checkArray' do
	it 'initialisierung' do
		normalArry = [1, 2, 3]
		expect(normalArry[1]).to eq(2)
	end


	it "new creates an Array with nils of given length" do
		array = Array.new(3)
		expect(array.length).to eq(3)
		expect(array).to eq [nil,nil,nil]
	end


	it 'fill' do
		booleanArray = Array.new(3, true)
		expect(booleanArray[2]).to eq(true)
		expect(booleanArray).to eq [true, true, true]
	end


	it 'arithmetik' do
		namen = ["Jonas", "Paul", "Felix"]
		namen += ["Kaj"]
		namen -= ["Felix"]
		namen *= 2

		expect(namen.length).to eq(6)
		expect(namen[2]).to eq("Kaj")
		expect(namen[4]).to eq("Paul")
		# äh - wie sieht das array namen jetzt aus??
		expect(namen).to eq ["Jonas","Paul","Kaj","Jonas","Paul","Kaj"]
	end
end






