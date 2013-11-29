
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
		arrayX.delete(4);
		expect(arrayX[4]).to eq(nil)
	end
	
	it "writes" do
		string = arrayStr[0] + arrayStr[1] + arrayStr[2]
		expect(string).to eq("NameNachnameVorname")
	end

end
