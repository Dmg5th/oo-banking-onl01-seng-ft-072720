class Transfer 
   attr_reader :sender, :receiver,:amount  
   attr_accessor :status
    
    def initialize(sender, receiver, amount)
      @sender = sender
      @receiver = receiver
      @amount = amount 
      @status = "pending"
    end 
    
    def valid?
      self.sender.valid? && self.receiver.valid? 
    end 
    
    def execute_transaction 
      if valid? && self.status == 'pending' && sender.balance > amount
        sender.balance -= amount
        receiver.balance += amount
        self.status = "complete"
      else 
        self.status = "rejected"
        "Transaction rejected. Please check your account balance."
        end 
      end 
      
      def reverse_transfer
        if valid? && self.status == "complete" && receiver.balance > amount 
          sender.balance += amount 
          receiver.balance -= amount 
          @status = "reversed"
        end 
      end 
        
  end 
