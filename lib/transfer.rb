class Transfer
  attr_accessor :sender, :receiver, :amount
  attr_accessor :status
  
  def initialize(bank1, bank2, money)
    @sender = bank1
    @receiver = bank2
    @status = "pending"
    @amount = money
  end
  
  def valid?
    @sender.valid? && @receiver.valid?
  end
  
  def execute_transaction
    if self.status == "pending" && @sender.balance > @amount
      @sender.balance -= @amount
      @receiver.balance += @amount
      self.status = "complete"
    else
      "Transaction rejected. Please check your account balance."
    end
  end
  
    
  
end
