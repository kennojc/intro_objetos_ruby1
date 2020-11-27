class CuentaBancaria
    attr_accessor :username

    def initialize (username, account, vip = 0)
        raise RangeError, 'La cuenta debe ser de 8 dígitos' if account.digits.count != 8
        
        @username = username
        @account = account
        @vip = vip
    end

    def num_de_cuenta
        if @vip == 1
            print "Su cuenta es 1-#{@account} y corresponde a Cuenta VIP"
        else
            print "Su cuenta es 0-#{@account} y corresponde a Cuenta Estándar"
        end
    end
end

prueba = CuentaBancaria.new('SrBarriga',12345678,1)
otra_prueba = CuentaBancaria.new('DonRamón', 12345667)

puts prueba.num_de_cuenta
puts otra_prueba.num_de_cuenta