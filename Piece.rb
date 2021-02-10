

class Piece
    attr_reader :color, :board, :symbol
    attr_accessor :pos
    def initialize(color,board,pos)
        @color = color
        @board = board
        @pos = pos
        @symbol = " "
    end
end













