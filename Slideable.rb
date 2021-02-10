module Slideable
    HORIZONTAL_DIRS = [[0,1],[1,0],[0,-1],[-1,0]]
    DIAGONAL_DIRS = [[1,1],[-1,-1],[-1,1],[1,-1]]
    
    
    def move_dirs()
        dirs = HORIZONTAL_DIRS + DIAGONAL_DIRS
    end

    def grow_unblocked_moves_in_dir(dx,dy)
        unblocked_moves = []

        row = self.pos[0]
        col = self.pos[1]

        while true 
            row += dx 
            col += dy

            piece_at_pos = self.board[[row,col]]

            #self.board[[row,col]]

            break if row < 0 || row > 7 || col < 0 || col > 7
           

            if piece_at_pos.is_a?(NullPiece) == false 
                if piece_at_pos.color == self.color
                    break
                 else
                    unblocked_moves << [row,col]
                    break
                end
              else 
                unblocked_moves << [row,col]
            end
        end

        return unblocked_moves
    end

    def moves 
        arr = []
        
        self.move_dirs.each do |direction|
          dx = direction[0] 
          dy = direction[1]

          arr += grow_unblocked_moves_in_dir(dx,dy)
        end

        return arr
    end
end