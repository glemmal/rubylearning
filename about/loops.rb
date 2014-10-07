# WS2014 consolidate with control_structures.rb 
# remove "test" from example names
describe "While-loop test" do 
	it "Tests if the variable gets counted to expected value in while loop" do
		i=0
		while i<5 do
			i+=2
		end
		expect(i).to eq(6)
	end
end


describe "Until-loop test" do 
	it "Tests if the variable gets counted to expected value in until-loop" do
		i=0
		until i > 5  do
			i+=2
		end
		expect(i).to eq(6)
	end
end




describe "For-loop test" do 
	it "Tests if the variable gets counted to expected value in for-loop" do
		a=0
		for i in 0..5
			a+=1
		end
		expect(a).to eq(6)
	end
end

describe "Break test in for-loop" do 
	it "Tests if the variable gets counted to expected value in for-loop with use of break" do
		a=0
		for i in 0..5
			if i > 2 then
				break
			end
			a+=1
		end
		expect(a).to eq(3)
	end
end


describe "Next test in for-loop" do 
	it "Tests if the variable gets counted to expected value in for-loop with use of next" do
		a=0
		for i in 0..5
			if i < 2 then
				next
			end
			a+=1
		end
		expect(a).to eq(4)
	end
end

