class Symbols
	rubSym1 = :ruby
	rubSym2 = :ruby
	rubString1 = "ruby"
	rubString2 = "ruby"
	
	describe Symbols do
	
		it "tests if the object ids of to same symbols are equal" do
		expect(rubSym1.object_id).to eq(rubSym2.object_id)
		end
		
		it "tests if the object ids of to strings with same value are equal" do
		expect(rubString1.object_id).to_not eq(rubString2.object_id)
		end
		
		it "tests if the string to symbol method gives out the symbol" do
		expect(rubString1.to_sym).to eq(rubSym1)
		end
		
		it "tests if the symbol to string method gives out the symbol" do
		expect(rubSym1.to_s).to eq(rubString1)
		end
	end
	
end


