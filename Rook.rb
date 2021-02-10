require_relative "./Piece.rb"
class Rook < Piece
    include Slideable
    def initialize(color, board, pos)
        super
        @symbol = 'r'

    end

    def move_dirs()
        HORIZONTAL_DIRS 
    end
end