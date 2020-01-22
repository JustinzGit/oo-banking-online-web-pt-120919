class Transfer
  attr_accessor :status
  
  def initialize(bank1, bank2, money)
    @status = "pending"
  end 
end
