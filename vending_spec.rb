require_relative 'vending'


describe "vendor" do
  let(:vendor) { Vendor.new}
  
  it "should say insert coin upon initialize" do
    expect(vendor.display).to eq "INSERT COIN"
  end
  it "should be able to create a vendor object" do
    expect(vendor).to be_a Vendor
  end

  it "should be able to collect coins" do
    expect(vendor.collect(10)).to eq 10
  end

  it "should give you the total of coins inserted in a given instance" do
    expect(vendor.collect(10)).to eq(10)
    expect(vendor.collect(10)).to eq(20)
  end

  it "should reject pennies" do
    expect(vendor.collect(1)).to eq 0
  end

  it "should reject 6c" do
    expect(vendor.collect(6)).to eq 0
  end

  it "should update sum to 5 when 5c is inserted" do
    expect(vendor.collect(5)).to eq(5)
  end

  it "should update sum to 25 when 25c is inserted" do
    expect(vendor.collect(25)).to eq(25)
  end

  it "should tell you total is 10c when 10c is inserted" do
    vendor.collect(10)
    expect(vendor.display).to eq("total: 10c")
  end
  it "should have 0 coins in the coin return initially" do 
    expect(vendor.coin_return).to be_empty
  end
  it "should return 1c when inserted 1c" do
    vendor.collect(1)
    expect(vendor.coin_return).to eq([1])
  end

  it "should return 1c and 2c when both bad coins are inserted" do
    vendor.collect(1)
    vendor.collect(2)
    expect(vendor.coin_return).to eq([1,2])
  end


end