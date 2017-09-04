class Album
  def initialize(name, stock, price)
    @name = name
    @stock = stock
    @price = price
  end

  attr_reader :price

  attr_reader :stock

  def discount(ratio)
    @price -= ratio * @price
  end

  def sell(amount)
    @stock -= amount
  end

  def buy(amount)
    @stock += amount
  end
end
