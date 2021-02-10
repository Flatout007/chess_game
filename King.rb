require_relative "./Piece.rb"
require_relative "./Stepable.rb"
class King < Piece
    include Stepable
    def initialize(color, board, pos)
        super
        @symbol = '♚'

    end

    def move_diffs
        return valid_moves_king = [[0,1],[1,0],[0,-1],[-1,0],[1,1],[-1,-1],[-1,1],[1,-1]]
        
    end
end