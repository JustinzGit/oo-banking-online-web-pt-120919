class Transfer
  attr_reader :sender, :receiver, :status, :amount
  
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
    @sender.balance -= @amount
    @receiver.balance += @amount
    Transfer.status = "complete"
  end 
  
end
