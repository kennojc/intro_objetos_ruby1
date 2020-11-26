cards = ARGV[0].to_i

class Carta
    attr_accessor :rank, :suit
    def initialize
        @rank = Random.rand(1..13)
        @suit = ['C','D','E','T'].sample
    end
end

def shuffle(cards)
    deck = []
    
    cards.times do |i|
        deck << Carta.new
    end
    
    print deck 
    print "\n"
end

shuffle(cards)