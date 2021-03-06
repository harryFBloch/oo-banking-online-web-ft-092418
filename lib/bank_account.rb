class BankAccount
  attr_accessor :balance, :status
  attr_reader :name
  
  def initialize(name)
    self.name = name
    self.balance = 1000
    self.status = "open"
  end
  
  def deposit(amount)
    self.balance += amount
  end
  
  def display_balance
    "Your balance is $#{self.balance}."
  end
  
  def valid?
    if self.status == "open" && self.balance > 0 
      true
    else 
      false
    end
  end
  
  def close_account
    self.status = "closed"
  end
  
  private
  def name=(name)
    @name = name
  end
end
