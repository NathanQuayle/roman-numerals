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
  
end