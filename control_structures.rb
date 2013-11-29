describe "Testing the Ruby control structures;" do
	it "are if/unless branches working?" do
		
		a = 2
		b = 0
		c = 5
		
		if a == 2
			b = true
		else
			b = false
		end
		
		unless c == 7
			c = 10
		end
		
		expect(b).to be_true
		expect(c).to eq(10)
	end
	
	it "are for while/until working?" do
		
		a = 1
		b = 0
		
		while a < 10
			a = a + 1
		end
		
		until b == 10
			b = b + 1
		end
		
		expect(a).to eq(10)
		expect(b).to eq(10)
	end
	
	it "tests if for loops are working" do
		
		a = 0
		b = 10
		
		for a in (0..b)
			puts a
		end
		
		expect(a).to eq(10)
		
	end
	
	it "tests if case is working" do
		
		a = 2
		b = 0
		
		case
			when a < 2 then b = 1
			when a == 2 then b = 2
			when a > 2 then b = 3
		end
		
		expect(b).to eq(2)
	end
end