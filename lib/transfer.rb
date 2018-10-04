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
    if self.sender.valid? && self.receiver.valid?
      true
    else
       binding.pry
      false
    end
  end
  
  def execute_transaction
   if self.status == "pending" && valid?
    self.receiver.deposit(amount)
    self.sender.balance -= amount
    self.status = "complete"
    else
      self.status = "Transaction rejected. Please check your account balance."
   end
  end
  
end
