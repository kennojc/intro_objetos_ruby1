require 'byebug'

class Usuario
    attr_accessor :client, :bank_account
    
    def initialize (client,bank_account = array.new)
        raise ArgumentError, 'El cliente debe tener al menos una cuenta bancaria registrada.' if bank_account.count < 1
        @client = client
        @bank_account = bank_account 
        

    end

    def total_balance
        
        all = bank_account.map {|c| c.balance }.sum
        puts "El saldo total de #{client} es #{all} "
        print "\n"
    end

end


class CuentaBancaria
    attr_accessor :bank, :account, :balance 

    def initialize (bank,account,balance = 0)
        @bank = bank
        @account = account
        @balance = balance
    end

    def transfer (money,destination)
        @money = money
        @destination = destination

        self.balance -= @money
        destination.balance += @money
    end


end
