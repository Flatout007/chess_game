require_relative "./Piece.rb"
require_relative "./Slideable.rb"
class Bishop < Piece
    include Slideable
    def initialize(color, board, pos)
        super
        @symbol = '♝'

    end

    def move_dirs()
      dirs = DIAGONAL_DIRS
    end
end