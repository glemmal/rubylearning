# this is a test for method definitions

describe "A simple method definition" do
	it "it defines an void method an check return value for nil" do
		def printHello()
			# puts "Hello"
			nil
		end
		expect(printHello).to eq nil
	end

	it "definition with a default value for the parameter" do
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

	it "it defines a class with an instance variable and calls the constructor" do
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

	it "checks for an array as parameter" do
		def array_as_param(val)
			val.kind_of?(Array)
		end
		expect(array_as_param("test")).to eq false
		expect(array_as_param(["s","t","r","i","n","g"])).to eq true
	end

	it "calculates the sum" do
		def sum(a, b)
			a + b
		end

		expect(sum(4, 3)).to eq 7
	end

	it "subtracts two numbers" do
		def sub(a, b)
			a - b
		end

		expect(sub(4, 3)).not_to eq 0
	end

	it "multiplies two numbers" do
		def mul(a, b)
			a * b
		end

		expect(mul(2, 3)).not_to eq 5
	end

	it "divides two numbers" do
		def div(a, b)
			a / b
		end

		expect(div(4, 2)).to eq 2
	end
end
