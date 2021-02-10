require_relative "./Piece.rb"
class Rook < Piece
    def initialize(color, board, pos)
        super
        @symbol = 'r'

    end
end