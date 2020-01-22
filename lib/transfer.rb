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
    @sender.balance -= @amount
    @receiver.balance += @amount
    self.status = "complete"
  end 
  
end
