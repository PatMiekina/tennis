class Set
    attr_accessor :player1, :player2, :winner, :advantage, :scores
    
    def initialize
        @player1 = 0
        @player2 = 0
        @winner = nil # or player1 or player2
        @advantage = nil # or player1 or player2
        @scores = [0, 15, 30, 40]
    end

    def point(player)
        # for current scores 0, 15, 30 ->
        player += 1 if player < 3
        if player1 == 3 && player2 == 3
            advantage = player
        end
    end

    def winner?(player1, player2, advantage = nil)
        # one player higher score -> winner
        # one player advantage + same scores -> nil
        # deuce -> nil
    end

    def score
        score = {
            player1: @scores[player1],
            player2: @scores[player2],
            winner: self.winner?,
            advantage: advantage
        }
    end
end

class Game
    attr_accessor :player1, :player2, :winner, :advantage

end