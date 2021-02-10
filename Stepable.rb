module Stepable
    def moves 
        unblocked_moves = []

        move_diffs.each() do |diff|
            row = self.pos[0] + diff[0]
            col = self.pos[1] + diff[1]

            next if row < 0 || row > 7 || col < 0 || col > 7

            piece_at_pos  = self.board[[row,col]]

            if piece_at_pos.is_a?(NullPiece) == false 
                if piece_at_pos.color == self.color
                    next
                 else
                    unblocked_moves << [row,col]
                    next
                end
              else 
                unblocked_moves << [row,col]
            end
        end
        unblocked_moves
    end

    def move_diffs

    end
end




# king [[0,1],[1,0],[0,-1],[-1,0],[1,1],[-1,-1],[-1,1],[1,-1]]
# knight [[1,2],[1,-2],[-1,2],[-1,-2],[2,1],[2,-1],[-2,1],[-2,-1]]