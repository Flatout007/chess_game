require_relative "./Piece.rb"

class King < Piece
    def initialize(color, board, pos)
        super
        @symbol = 'K'

    end
end