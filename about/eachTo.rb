describe "A Ruby Class" do
	it "beschreibung" do
	testArray = ["Test1", "Test2", "Test3"]
	i = 0
	testArray.each {
		|testString|
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
end