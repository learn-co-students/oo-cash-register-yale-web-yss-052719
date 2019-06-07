class CashRegister

attr_accessor :total
attr_reader :discount
  
  def initialize(discount = 0)
     @discount = discount
     @total = 0 
  end
  
  def employee_discount
    
    
  
  def add_item (item, cost, quantity = 1)
    @total = @total + cost * quantity
    
  end
  
  #def
    
  


end


# let(:cash_register) { CashRegister.new }
#   let(:cash_register_with_discount) { CashRegister.new(20) }