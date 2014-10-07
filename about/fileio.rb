#WS2014: add cleanup for temp
describe "File IO" do

  filename  = "temp/test.txt"
  renamed   = "temp/test_renamed.txt"

  before(:all) do
    Dir.mkdir('temp') unless Dir.exists?('temp')
  end


  it "write content to the file" do
    File.open(filename, "w+") do |file|
      file.puts("This test line 1")
      file.rewind
      expect(file.readline).to eq "This test line 1\n"
    end
  end

  describe "with file created and closed" do
    before(:each) do
      @file = File.new(filename, "w")
      @file.close
    end
    after(:each) do
    [filename,renamed].each do |fn|
      begin
        File.delete(fn) if File.exists?(fn)
      rescue IOError
      end
    end
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
