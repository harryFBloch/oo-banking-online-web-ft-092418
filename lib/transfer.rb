class Transfer
  attr_accessor :sender, :to, :amount
  
  def initialize(from, to, amount)
    self.sender = from
    self.to = to
    self.amount = amount
  end
  
  def sender 
    
  end
end
