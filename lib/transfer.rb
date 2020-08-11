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
      if valid? && self.status == 'pending' && sender.balance > amount
      sender.balance -= amount
      receiver.balance += amount
      self.status = 'complete'
      end 
    else 
      @status = "rejected"
    end 
    
    
  
  
  
  
  
  
  
  
  
end 
