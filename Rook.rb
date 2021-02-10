require_relative "./Piece.rb"
require_relative "./Slideable.rb"
class Rook < Piece
    include Slideable
    def initialize(color, board, pos)
        super
        @symbol = '♜'

    end

    def move_dirs()
        dirs = HORIZONTAL_DIRS 
    end
end