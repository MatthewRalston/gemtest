require_relative '../lib/cart.rb'

describe "A new instance of", Cart do
  before :each do
    @cart = Cart.new
  end

  it "should be properly initialized" do
    expect(@cart).to be_a(Cart)
  end

  context "when new" do
    it "contains no items" do
      expect(@cart).to be_empty
    end

    it "should have total value $0.0" do
      expect(@cart.value).to eq(0.0)
    end

    it "should have an empty set of items" do
      expect(@cart.items).to eq({})
    end
    
    it "should accept an added item" do
      expect{@cart["apple"]=0.40}.to_not raise_error
    end
  end
end
describe "Adding an item to", Cart do
  before :each do
    @cart=Cart.new
    @cart["apple"]=0.40
  end

  it "should not be empty" do
    puts @cart.items      #pending("need setter method for items")
    expect(@cart).to_not be_empty
  end
  it "should have one named item" do
    expect(@cart.items.size).to eq(1)
    expect(@cart.items.keys).to include("apple")
  end
  it "should have an item with a decimal value" do
    expect(@cart.value).to eq(0.40)
  end
end
