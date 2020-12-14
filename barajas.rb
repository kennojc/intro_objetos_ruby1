require 'byebug'
require_relative 'carta'

class Baraja
    attr_accessor :carta

    def initialize
        @carta = Array.new
        
        until @carta.uniq.size == 52 do
            @carta << Carta.new
        end

    end

    def barajar
        @carta.shuffle
    end

    def sacar
        @carta.pop
    end

    def repartir_mano
        @carta[0..4]
    end
end
