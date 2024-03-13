require_relative '../lib/board'
require_relative '../lib/player'

describe 'Board' do
    it 'initialize' do
        player1 = Player.new('black')
        player2 = Player.new('white')

        board = Board.new(player1.pieces.concat(player2.pieces))

        expect(board.board).to eq([['♖', '♘', '♗', '♕', '♔', '♗', '♘', '♖'],
                                    ['♙', '♙', '♙', '♙', '♙', '♙', '♙', '♙'],
                                    [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '],
                                    [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '],
                                    [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '],
                                    [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '],
                                    ['♟︎', '♟︎', '♟︎', '♟︎', '♟︎', '♟︎', '♟︎', '♟︎'],
                                    ['♜', '♞', '♝', '♚', '♛', '♝', '♞', '♜']])
    end

    it 'update piece positions' do 
        player1 = Player.new('black')
        player2 = Player.new('white')

        board = Board.new(player1.pieces.concat(player2.pieces))

        board.update_piece_pos(player1.pieces[0][0], [3, 0])

        expect(board.board).to eq([['♖', '♘', '♗', '♕', '♔', '♗', '♘', '♖'],
                                    ['♙', '♙', '♙', '♙', '♙', '♙', '♙', '♙'],
                                    [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '],
                                    ['♜', ' ', ' ', ' ', ' ', ' ', ' ', ' '],
                                    [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '],
                                    [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '],
                                    ['♟︎', '♟︎', '♟︎', '♟︎', '♟︎', '♟︎', '♟︎', '♟︎'],
                                    [' ', '♞', '♝', '♚', '♛', '♝', '♞', '♜']])
    end

    it 'delete piece' do 
        player1 = Player.new('black')
        player2 = Player.new('white')

        board = Board.new(player1.pieces.concat(player2.pieces))

        board.update_piece_pos(player1.pieces[0][0])

        expect(board.board).to eq([['♖', '♘', '♗', '♕', '♔', '♗', '♘', '♖'],
                                    ['♙', '♙', '♙', '♙', '♙', '♙', '♙', '♙'],
                                    [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '],
                                    [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '],
                                    [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '],
                                    [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '],
                                    ['♟︎', '♟︎', '♟︎', '♟︎', '♟︎', '♟︎', '♟︎', '♟︎'],
                                    [' ', '♞', '♝', '♚', '♛', '♝', '♞', '♜']])
    end
end