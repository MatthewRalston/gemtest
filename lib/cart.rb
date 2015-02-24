class Cart
  extend Forwardable
  def_delegator :@items, :empty?
  attr_reader :items
  def initialize
    @items={}
  end
  def value
    @items.empty? ? 0 : @items.values.reduce(:+)
  end
  def[](index)
    @items[index]
  end
  def[]=(index,value)
    @items[index]=value
  end
end
