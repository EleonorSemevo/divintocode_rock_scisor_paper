class Player
    def hand
        
        while true 
            puts "PLease enter a number."
            puts "0:Goo" 
            puts "1:Choki" 
            puts  "2:Par"
            puts

            input_hand = gets.chomp.to_s
            # When the number is not between 0 and 2 or is alphabets
            if input_hand!= '0' && input_hand!='1' && input_hand!='2'
                puts "PLease input numbers between 0-2."
                puts
            else
                return input_hand.to_i
            end
        end
    end
end

class Enemy
    def hand
        return rand(2)
    end
end


class Janken

    def pon(player_hand, enemy_hand)
        janken =  ["goo", "choki", "par"]
        
        puts "The other party's hand is #{janken[enemy_hand]} "
        puts

        result = (player_hand - enemy_hand +3)%3
        if result ==2 
            puts "You win"
            puts
            
        elsif result==1
            puts "Aiko"
            puts
            
        elsif result==0
            puts "You are loosing"
            puts
            
        end
        return false
        
    end
    

end


class GameStart
  #En utilisant #self, vous pouvez appeler la méthode jankenpon en utilisant le nom de la classe sans instancier GameStart.
    def self.jankenpon
        #Remplacez le Player instancié par la variable "player".
        player = Player.new
        # Affectez une instanciation de Enemy à la variable "ennemi".
        ennemi = Enemy.new
        # Attribuez une instanciation de Janken à la variable "janken".
        janken = Janken.new
        # Affectez "true" à la variable "next_game".
        # Si "next_game" est "false", le processus itératif se termine, et s'il est "true", le processus itératif continue.

        next_game = true

        while next_game
            # Remplacez la valeur (valeur de retour) renvoyée en exécutant rock-paper-scissors dans la variable "next_game".
            # "Janken.pon (player.hand, ennemi.hand)" exécute rock-paper-scissors."
            next_game = janken.pon(player.hand, ennemi.hand)
        end
    end

end
#Appelez la méthode jankenpon avec le nom de la classe.
GameStart.jankenpon
