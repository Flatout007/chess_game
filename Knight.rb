require_relative "./Piece.rb"
class Knight < Piece
    def initialize(color, board, pos)
        super
        @symbol = 'k'

    end
end