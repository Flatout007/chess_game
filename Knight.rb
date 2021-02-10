require_relative "./Piece.rb"
require_relative "./Stepable.rb"
class Knight < Piece
    include Stepable
    def initialize(color, board, pos)
        super
        @symbol = 'k'

    end

    def move_diffs
        return valid_moves_knight = [[1,2],[1,-2],[-1,2],[-1,-2],[2,1],[2,-1],[-2,1],[-2,-1]]
    end
end