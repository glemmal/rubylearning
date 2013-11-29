
describe 'checkArray' do
	it 'initialisierung' do
		normalArry = [1, 2, 3]
		expect(normalArry[1]).to eq(2)
	end


	it 'lenght' do
		arraylength = Array.new(3)
		expect(arraylength.length).to eq(3)
	end


	it 'fill' do
		# => true, true, true
		booleanArray = Array.new(3, true)
		expect(booleanArray[2]).to be_true
	end


	it 'arithmetik' do
		namen = ["Jonas", "Paul", "Felix"]
		namen += ["Kaj"]
		namen -= ["Felix"]
		namen *= 2
		
		expect(namen.length).to eq(6)
		expect(namen[2]).to eq("Kaj")
		expect(namen[4]).to eq("Paul")
	end
end






