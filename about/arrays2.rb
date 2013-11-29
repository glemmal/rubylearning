
describe 'checkArray' do
	it 'initialisierung' do
		normalArry = [1, 2, 3]
		expect(normalArry[1]).to eq(2)
	end


	it 'lenght' do
		arraylength = Array.new(3)
		expect(arraylength.length).to eq(3)
	end


	it 'array fill' do
		# => true, true, true
		booleanArray = Array.new(3, true)
		expect(booleanArray[2]).to be_true
	end
end






