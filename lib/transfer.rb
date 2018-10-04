require 'pry'
class Transfer
  attr_accessor :sender, :to, :amount
  
  def initialize(from, to, amount)
    self.to = to
    self.amount = amount
    self.sender = BankAccount.new(from)
    binding.pry
  end
  
  def sender 
    
  end
end
