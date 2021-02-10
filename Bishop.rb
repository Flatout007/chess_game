require_relative "./Piece.rb"
class Bishop < Piece
    include Slideable
    def initialize(color, board, pos)
        super
        @symbol = 'b'

    end

    def move_dirs()
      DIAGONAL_DIRS
    end
end