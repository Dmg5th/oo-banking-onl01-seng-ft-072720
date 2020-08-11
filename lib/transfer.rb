class Transfer 
    attr_accessor :sender, :receiver, :status, :amount  
    
    def initialize(sender, receiver, amount)
      @sender = sender
      @receiver = receiver
      @amount = 50 
      @status = "pending"
    end 
    
    def valid?
      self.sender.valid? && self.receiver.valid? 
    end 
    
    def execute_transaction 
      self.sender -= amount 
      self.receiver += amount 
    end 
  
  
  
  
  
  
  
  
end 
