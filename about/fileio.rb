describe "A File IO" do
  
  filename  = "test.txt"
  renamed   = "test_renamed.txt"

  it "creates new file" do
    File.new(filename, "w")
    expect(File.exists?(filename)).to be true
  end

  it "write content to the file" do
    file = File.open(filename, "w+")
    file.puts("This test line 1")
    file.rewind
    expect(file.readline).to eq "This test line 1\n"
    file.close
  end

  it "renames file" do
    File.rename(filename, renamed)
    expect(File.exists?(renamed)).to be true
  end

  it "deletes file" do
    File.delete(renamed)
    expect(File.exists?(renamed)).to be false
  end
end