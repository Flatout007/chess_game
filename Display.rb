require "colorize"

class Display
    attr_reader :board
    def initialize(board)
        @board = board
    end

    def render() 
        @board.board.each() do |row|
            puts " "
            row.each() do |pos|
                if pos.is_a?(NullPiece) == false
                    print pos.symbol.colorize(:blue) + " "if pos.color == "black"
                    print pos.symbol + " " if pos.color == "white"
                 else 
                    print "_ "
                end
            end 
        end
    end
end
