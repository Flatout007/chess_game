require "colorize"
require_relative "./Cursor.rb"

class Display
    attr_reader :board
    def initialize(board)
        @board = board
        @cursor = Cursor.new([0,0], board)
    end

    def render() 
        @board.board.each_with_index do |row,x|
            puts " "
            row.each_with_index do |pos,y|
                if pos.is_a?(NullPiece) == false
                    if pos.pos == @cursor.cursor_pos
                        print pos.symbol.colorize(:red) + " "
                    elsif pos.color == "black"
                        print pos.symbol.colorize(:blue) + " "
                    elsif pos.color == "white"
                        print pos.symbol + " " 
                    end
                 else
                    if [x,y] == @cursor.cursor_pos
                        blank = "_ "
                        print "_ ".colorize(:red)
                    else
                        print "_ "
                    end
                end
            end 
            
        end
        puts @cursor.cursor_pos
    end

    def test_display()
        while true
            self.render
            @cursor.get_input
        end
    end
end
