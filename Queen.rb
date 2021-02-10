require_relative "./Piece.rb"
class Queen < Piece
    include Slideable
    def initialize(color, board, pos)
        super
        @symbol = 'Q'

    end

    def move_dirs()
        HORIZONTAL_DIRS += DIAGONAL_DIRS
    end

    
end