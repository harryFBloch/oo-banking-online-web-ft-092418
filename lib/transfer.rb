require 'pry'
class Transfer
  attr_accessor :sender, :receiver, :amount, :status
  
  def initialize(from, to, amount)
    self.receiver = to
    self.amount = amount
    self.sender = from
    self.status = "pending"
  end
  
  def valid?
    
  end
  
end
