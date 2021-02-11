require_relative "./Piece.rb"
require "singleton"

class NullPiece < Piece
    include Singleton
    def initialize()
        @symbol = ' '
        @color = " "
        @pos = []
    end

    def moves()
        return []
    end
end