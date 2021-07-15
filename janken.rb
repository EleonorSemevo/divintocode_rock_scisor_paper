class Player
    def hand
        puts "Veillez saisir un nombre."
        puts "0:pierre , 1:papier , 2:ciseaux"
        input_hand = gets.to_i

        while true 
            if input_hand!= 0 && input_hand!=1 && input_hand!=2
                puts "Veillez saisir un nombre entre 0 et 2."
            else
                return input_hand
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
        janken = ["pierre","papier","ciseaux"]
        
        puts "La main de l'autre partie est #{janken[enemy_hand]} "

        result = (player_hand - enemy_hand +3)%3
        if result ==2 
            puts "Vous gagnez"
            return true
        elsif result==1
            puts "Aiko"
            return true
        elsif result==0
            puts "Vous êtes en train de perdre"
            return false
        end
        
        
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