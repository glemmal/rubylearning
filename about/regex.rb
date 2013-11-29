

# These are tests for the use of regex in ruby

# great page to try out ruby regexes:
# http://rubular.com/

describe "Regular Expressions" do
	# hm. very nice examples, but it would have been better if you'd
	# split it up with various examples, eg.
	# it "can check if there are numbers in the string"
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
		#can be addressed like an array, but only contains the first match!
		expect(matchVowels[0]).to eq "I"

		r = /(\w*).(\w*)/ #This regex finds character splitted by a dot
		s3 = "IchBin.EinText" #This is a text divided by a dot
		matchR = s3.match(r) #Match the string and get the matchR-match-object
		expect(matchR[0]).to eq "IchBin.EinText" #The first contains the whole matched string (if it matched)
		expect(matchR[1]).to eq "IchBin" #The first entry contains the whole right part
		expect(matchR[2]).to eq "EinText" #The second entry contains the whole left part

		#I am not sure if there is an Apple or an Orange in the string
		s4 = "It's an Apple"
		expect(s4).to match(/(Apple|Orange)/)

		#What happens if match fails?
		s5 = "I am a string, that is never going to be matched"
		expect(s5.match(/[0-9]/)).to eq nil #nil will be returned if match failed
	end
end
