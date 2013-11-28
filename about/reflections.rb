#reflection.rb
#get method names, find out 
#if an object responds to a method, 
#send a message to an object 
#where you have the method 
#name in a string
describe "Test" do
it "kryptische worte" do
	class Test
		def sayhello
			h = "hello"
		end
	end
	test = Test.new
	expect(test.sayhello).to eq "hello"
end
end