require "roman_numerals"

describe "#translate" do
  
  it "returns 'I' when passed 1" do
    expect(translate(1)).to eq "I"
  end
  
  it "returns 'II' when passed 2" do
    expect(translate(2)).to eq "II"
  end
  
  it "returns 'IV' when passed 4" do
    expect(translate(4)).to eq "IV"
  end
  
  it "returns 'X' when passed 10" do
    expect(translate(10)). to eq "X"
  end
  
  it "returns 'LX' when passed 60" do
    expect(translate(60)). to eq "LX"
  end
  
  it "returns 'C' when passed 60" do
    expect(translate(100)). to eq "C"
  end
  
  it "returns 'CC' when passed 60" do
    expect(translate(200)). to eq "CC"
  end
  
  it "returns 'DC' when passed 60" do
    expect(translate(600)). to eq "DC"
  end
  
  it "returns 'M' when passed 60" do
    expect(translate(1000)). to eq "M"
  end
  
end