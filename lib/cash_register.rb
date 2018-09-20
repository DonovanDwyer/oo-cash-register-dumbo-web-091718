class CashRegister
  attr_accessor :discount, :total
  attr_reader :items, :last_transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, cost, quantity=1)
    quantity.times do
      @items << title
      @total += cost
      @last_transaction = cost
    end
  end

  def apply_discount
    if @discount > 0
      @total = @total - (@total * 0.2)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @last_transaction
  end

end
