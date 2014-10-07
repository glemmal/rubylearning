

#WS2014 consolidate with method_returns.rb

describe "A simple method definition" do
	it "it defines a void method an checks the return value for nil" do
		def print_hello()
			# puts "Hello"
			nil
		end
		expect(print_hello).to eq nil
	end

	it "definition with a default value for the parameter" do
		def print_message(msg="test")
			msg
		end
		expect(print_message).to eq "test"
		expect(print_message("new message")).to eq "new message"
	end

	it "it defines and calls the method" do
		def sum_of_a(a,b)
			a+b
		end
		expect(sum_of_a(3,2)).to eq 5
	end

	it "it defines a class with an instance variable and calls the constructor" do
		class Test
			def initialize(name="Max Mustermann")
				@name = name
			end

			def get_name()
				@name
			end
		end

		c = Test.new
		expect(c.get_name).to eq "Max Mustermann"
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

		expect(sub(4, 3)).to eq 1
	end

	it "multiplies two numbers" do
		def mul(a, b)
			a * b
		end

		expect(mul(2, 3)).to eq 6
	end

	it "divides two numbers" do
		def div(a, b)
			a / b
		end

		expect(div(4, 2)).to eq 2
	end
end
