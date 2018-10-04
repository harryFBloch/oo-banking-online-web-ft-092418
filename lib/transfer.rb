require 'pry'
class Transfer
  attr_accessor :sender, :receiver, :amount, :status, :last_transfer

  
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
    if self.status == "pending" && self.sender.balance >= amount
      self.receiver.deposit(amount)
      self.sender.balance -= amount
      self.status = "complete"
      self.last_transfer = self
    else
      self.status = "rejected"
      "Transaction rejected. Please check your account balance."
   end
  end
  
  def reverse_transfer
    binding.pry
    self.last_transfer.sender.deposit(self.last_transfer.amount)
    self.last_transfer.receiver.balance -= self.last_transfer.amount
    self.status = "reversed"
  end
  
end
