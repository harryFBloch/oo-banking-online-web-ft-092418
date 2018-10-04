require 'pry'
class Transfer
  attr_accessor :sender, :receiver, :amount
  
  def initialize(from, to, amount)
    self.receiver = to
    self.amount = amount
    self.sender = from
  end
  
  
  
end
