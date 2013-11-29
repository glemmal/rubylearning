describe "Test" do
it "object responds to method" do
class Test
def sayhello
h = "hello"
end
end
	test = Test.new
	expect(test.respond_to?("sayhello")).to eq true
end

it "send method name as string" do
	test = Test.new
	expect(test.send("sayhello")). to eq "hello"
end

it "object includes method" do
	test = Test.new
	expect(test.methods.include?(:sayhello)). to eq true
end


end

