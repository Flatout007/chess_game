require_relative "./Piece.rb"
class NullPiece < Piece
    def initialize(color, board, pos)
        super
        @symbol = ' '

    end
end