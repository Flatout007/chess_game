require_relative "./Piece.rb"
class Bishop < Piece
    def initialize(color, board, pos)
        super
        @symbol = 'b'

    end
end