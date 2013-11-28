# this is a test for method definitions

describe "A simple method definition" do
	it "it defines an void method an check return value for nil" do
		def printHello()
			# puts "Hello"
			nil
		end
		expect(printHello).to eq nil
	end

	it "defi" do
		def printMessage(msg="test")
			msg
		end
		expect(printMessage).to eq "test"
		expect(printMessage("new message")).to eq "new message"
	end

	it "it defines and calls the method" do
		def sumOfA(a,b)
			a+b
		end
		expect(sumOfA(3,2)).to eq 5
	end

	it "it defines a class with an instance variable and calls an class method" do
		class Test
			def initialize(name="Max Mustermann")
				@name = name
			end

			def getName()
				@name
			end
		end

		c = Test.new
		expect(c.getName).to eq "Max Mustermann"
	end
end
