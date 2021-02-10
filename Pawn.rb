require_relative "./Piece.rb"
class Pawn < Piece
    def initialize(color, board, pos)
        super
        @symbol = 'p'
    end

    def at_start_row?()
        return true if self.color == "white" && self.pos[0] == 1

        return true if self.color == "black" && self.pos[0] == 6

        return false       
    end

    def forward_dir()
        return 1 if self.color == "white"

        return -1 if self.color == "black"
    end

    def forward_steps()
       forward_moves = []

       row = self.pos[0]
       col = self.pos[1]

       unless row - 1< 0 || row + 1 > 7 || col < 0 || col > 7 
        forward_moves <<  [row + self.forward_dir, col] if self.board[[row + self.forward_dir,col ]].is_a?(NullPiece)
       end

       forward_moves <<  [row + self.forward_dir * 2, col] if self.at_start_row?

       return forward_moves
    end

    def side_attacks()
        row = self.pos[0]
        col = self.pos[1]

        side_attacks = []
        
        attack_left = self.board[[row-1,col + self.forward_dir]]
        attack_right = self.board[[row+1,col + self.forward_dir]]

        if !attack_left.is_a?(NullPiece)
            if attack_left.color != self.color
                side_attacks << attack_left.pos
            end
        end

        if !attack_right.is_a?(NullPiece)
            if attack_right.color != self.color
                side_attacks << attack_right.pos
            end
        end

        return side_attacks
    end

    def moves()
        arr = []
       
        arr.concat(self.forward_steps)
        arr.concat(self.side_attacks)

        return arr
    end
    
end