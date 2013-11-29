describe "Testing the Ruby control structures;" do
  it "are if branches working?" do

    a = 2
    b = 0

    if a == 2
      b = true
    else
      b = false
    end

    expect(b).to be_true
  end

  it "are unless branches working?" do
    c = 5

    unless c == 7
      c = 10
    end
    expect(c).to eq(10)
  end

  it "is for while working?" do

    a = 1

    while a < 10
      a = a + 1
    end
    expect(a).to eq(10)
  end

  it "is until working?" do

    b = 0
    until b == 10
      b = b + 1
    end


    expect(b).to eq(10)
  end

  it "tests if for loops are working" do

    a = 0
    b = 10

    for a in (0..b)
      # do stuff
    end

    expect(a).to eq(10)

  end

  it "tests if case is working" do

    a = 2
    b = 0

    case
      when a < 2 then b = 1
      when a == 2 then b = 2
      when a > 2 then b = 3
    end

    expect(b).to eq(2)
  end
end
