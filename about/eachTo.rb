describe "Loops" do

	#First test
	it "Test01" do
		testArray = ["Test1", "Test2", "Test3"] #Creating an array with three strings
		i = 0
		
		 #iterating through string array (in Java this would be "for (String testString : testArray) {...}")
		 #current element of the iteration ("Test1" on first loop, "Test2" on second loop, "Test3" on third loop...)
		 #Important: |testString| has to be in the same line as "testArray.each {"!
		testArray.each 	{ |testString| 
			if i == 0
				expect(testString=="Test1")
			elsif i == 1
				expect(testString == "Test2")
			elsif i == 2
				expect(testString == "Test3")
			end
			i = i+1
		}
	end
	
	#Second Test
	it "Test02" do
	#iterating from one value to another (in Java this would be "for (int i = 1, i <= 10, i++)")
	
	sum = 0
	1.upto(10) 	{ |i|
		sum += i
	}
	expect(sum == 55)
	end
end