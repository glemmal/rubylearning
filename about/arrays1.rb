
describe "ArrayTest" do

	arrayX = [0,1,2,3]
	arrayStr = ["Name","Nachname","Vorname"]

	it "creates" do
		expect(arrayX[3]).to eq(3) 
	end
	
	it "adds" do
		arrayX[4] = 4;
		expect(arrayX[4]).to eq(4)
	end
	
	it "deletes" do
		arrayX.delete(3);
		expect(arrayX[4]).to eq(nil)
		expect(arrayX[3]).to eq(4)
	end
	
	it "writes" do
		string = arrayStr[0] + arrayStr[1] + arrayStr[2]
		expect(string).to eq("NameNachnameVorname")
	end
	
	it "change" do
		arrayStr[2] = "asdfg"
		expect(arrayStr[2]).to eq("asdfg")
	end
	
	it "gives you length" do
		laenge = arrayX.length
		expect(laenge).to eq(4)
	end

end
