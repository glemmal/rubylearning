
describe 'checkArray' do
	it 'basic' do
		arry = [1, 2, 3]
		expect(arry[1]).to eq(2)
	end

	it 'gehversuch' do
		emptyArry = Array.new
		Array.new(3, true)
		expect(emptyArry[2]).to be_nil
	end
end






