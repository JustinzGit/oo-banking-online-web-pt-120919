class Transfer
  attr_reader :sender, :receiver, :amount
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
    if self.status == "pending" && @sender.balance > @amount && valid?
      @sender.balance -= @amount
      @receiver.balance += @amount
      self.status = "complete"
    else
      self.status = "rejected"
      "Transaction rejected. Please check your account balance."
    end
  end
  
  def reverse_transfer
    if self.status == "complete"
      @sender.balance += @amount
      @receiver.balance -= @amount
      self.status = "reversed"
    end 
  end 
  
end
