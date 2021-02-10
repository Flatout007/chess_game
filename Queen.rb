require_relative "./Piece.rb"
class Queen < Piece
    def initialize(color, board, pos)
        super
        @symbol = 'Q'

    end
end