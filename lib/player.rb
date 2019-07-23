require 'pry'
require 'bundler'

class Player
    attr_accessor :life_points, :name

    def initialize(name)
        @life_points = 10
        @name = name
        
    end

    def show_state 
        puts "#{name} a #{life_points} points de vie"
    end

    def gets_damage (damage)
        @life_points = @life_points - damage  
        puts "#{name} a #{@life_points} points de vie"
    if  
        @life_points <= 0
        puts "U LOOSE"  
    end 
    end
    
    def attacks(player_attacked)

        puts "le joueur #{name} attacks le joueur #{player_attacked.name}"
        damage = compute_damage
        player_attacked.gets_damage(damage)  
        

    end

    def compute_damage
        return rand(1..6)
    end
end
