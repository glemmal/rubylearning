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

	it "subtracts two numbers" do 
		def sub(a, b)
			a - b
		end

		expect(sub(4, 3)).not_to eq 0
	end

	it "mulitplies two numbers" do 
		def mul(a, b)
			a * b
		end

		expect(mul(2, 3)).not_to eq 5
	end

	it "devides two numbers" do 
		def dev(a, b)
			a / b
		end

		expect(dev(4, 2)).to eq 2
	end
end
