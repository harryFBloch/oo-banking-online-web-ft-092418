class Transfer
  attr_accessor :from, :to, :amount
  
  def initialize(from, to, amount)
    self.from = from
    self.to = to
    self.amount = amount
end
