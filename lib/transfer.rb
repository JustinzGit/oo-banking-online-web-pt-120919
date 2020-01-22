class Transfer
  attr_reader :sender, :receiver, :status
  
  def initialize(bank1, bank2, money)
    @sender = bank1
    @receiver = bank2
    @status = "pending"
  end 
end
