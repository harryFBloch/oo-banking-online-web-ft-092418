require 'pry'
class Transfer
  attr_accessor :sender, :to, :amount
  @@sender
  
  def initialize(from, to, amount)
    self.to = to
    self.amount = amount
    @@sender = from
  end
  
  def sender 
    
  end
end
