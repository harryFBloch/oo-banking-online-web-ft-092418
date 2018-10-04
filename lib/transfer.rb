class Transfer
  attr_accessor :sender, :to, :amount
  
  def initialize(from, to, amount)
    self.sender = Bank
    self.to = to
    self.amount = amount
  end
  
  def sender 
    
  end
end
