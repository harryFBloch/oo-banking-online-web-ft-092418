class BankAccount
  attr_accessor :name, :balance
  
  def initialize(name)
    self.name = name
    self.balance = 1000
  end
end
