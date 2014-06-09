describe "File IO" do

  filename  = "test.txt"
  renamed   = "test_renamed.txt"

  after(:each) do
    [filename,renamed].each do |fn|
      @file.close if @file
      File.delete(fn) if File.exists?(fn)
    end
  end


  it "write content to the file" do
    File.open(filename, "w+") do |file|
      file.puts("This test line 1")
      file.rewind
      expect(file.readline).to eq "This test line 1\n"
     # file.close
    end
  end

  describe "with file existing" do
    before(:each) do
      @file = File.new(filename, "w")
    end
    it "creates new file" do
      expect(File.exists?(filename)).to be true
    end

    it "renames file" do
      File.rename(filename, renamed)
      expect(File.exists?(renamed)).to be true
    end

    it "deletes file" do
      File.delete(filename)
      expect(File.exists?(filename)).to be false
    end
  end
end
