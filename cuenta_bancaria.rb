class CuentaBancaria
    attr_accessor :username

    def initialize (username, account, vip = 0)
        @username = username
        @account = account
        @vip = vip

        puts "RangeError, la cuenta debe tener 8 dígitos" if @account.digits.count != 8
        end

    def num_de_cuenta (account)
        if @vip = 1
            print "Su cuenta es 1-#{@account} y corresponde a Cuenta VIP"
        else
            print "Su cuenta es 0-#{@account} y corresponde a Cuenta Estándar"
        end
    end
end

prueba = CuentaBancaria.new('SrBarriga',12345678,1)
puts prueba
