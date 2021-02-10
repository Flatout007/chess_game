require_relative "./Piece.rb"
class Pawn < Piece
    def initialize(color, board, pos)
        super
        @symbol = 'p'

    end
end