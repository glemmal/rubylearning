# These are tests for the use of regex in ruby

describe "A Ruby class" do
	it "tests regex" do
		s = "ichBinEinString1234"
		#Let's see if there are numbers in the String
		expect(s).to match(/[0-9]/)

		#Fine, there are numbers. But where? I can't see them
		#You could use s =~ here to get the position of your number
		#I did it for you, so let's see if the test passes

		expect(s =~ /[0-9]/).to eq 15

		#Ok, but is "ich" in there?

		expect(s).to match("ich")

		#Hmm, ok can I write it different?
		expect(s).to match(/ich/)

		#Lets try to find a "/"
		s1 = "/some text in here/"

		#You have to escape the "/" here
		expect(s1).to match(/\//)

		#Can you show me the vowels in my string?
		s2 = "I am a text with some vowels in it"
		matchVowels = s2.match(/[aeiouAEIOU]/) #Returns an match-object, that
		#can be addressed like an array
		expect(matchVowels[0]).to eq "I"

		#I am not sure if there is an Apple or an Orange in the string
		s3 = "It's an Apple"
		expect(s3).to match(/[Apple|Orange]/)
	end
end
