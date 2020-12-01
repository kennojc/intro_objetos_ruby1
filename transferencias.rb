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

# Ejemplos de instancias y métodos
cuenta1 = CuentaBancaria.new("Banco A",101010,10000)
cuenta2 = CuentaBancaria.new("Banco A",202020,10000)
cuenta3 = CuentaBancaria.new("Banco B","micuenta",10000)

cliente1 = Usuario.new("Juan",[cuenta1, cuenta2])
cliente2 = Usuario.new("Pedro", [cuenta3])

ejemplo = cuenta1.transfer(5000,cuenta3)
puts "A #{cliente1.client} le quedan #{cuenta1.balance} después de transferirle 5000 a Pedro"
puts "#{cliente2.client} ahora tiene #{cuenta3.balance} en su cuenta."
