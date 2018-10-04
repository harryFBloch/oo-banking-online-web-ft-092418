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
      false
    end
  end
  
  def execute_transaction
    self.receiver.deposit(amount)
    self.sender.balance -= amount
  end
  
end
