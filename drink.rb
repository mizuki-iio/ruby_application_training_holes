class Drink
  def initialize(name, price, number)
    @name = name
    @price = price
    @number = number
  end

  def name
    @name
  end

  def price
    @price
  end

  def number
    @number
  end

  def pay
    @number -= 1
  end
end